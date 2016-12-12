

divide_rate = 100000000

def tree_to_code(tree, y_num, n_trees, file):
    from sklearn.tree import _tree
    y_name = 'y['+str(y_num)+']'
        
    tree_ = tree.tree_
    
    feature_name = [
        #'{Data['+str(i*8+7)+'],Data['+str(i*8+6)+'],Data['+str(i*8+5)+'],Data['+str(i*8+4)+'],Data['+str(i*8+3)+'],Data['+str(i*8+2)+'],Data['+str(i*8+1)+'],Data['+str(i*8+0)+']}' \
       '{Data['+str(i*8+7)+'],Data['+str(i*8+6)+'],Data['+str(i*8+5)+'],Data['+str(i*8+4)+'],Data['+str(i*8+3)+'],Data['+str(i*8+2)+'],Data['+str(i*8+1)+'],Data['+str(i*8+0)+']}' \
       if i != _tree.TREE_UNDEFINED else "undefined!"
        for i in tree_.feature
    ]
    
    file.write("\nif(start == 1 && Solved != {}'b{} && !rst)\nbegin".format(n_trees,''.join(['1']*n_trees)))

    def recurse(node, depth):
        indent = "  " * depth
        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            name = feature_name[node]
            threshold = int(tree_.threshold[node]*divide_rate)
            file.write("\n{}if({} <= 64'd{})".format(indent, name, threshold))
            file.write("\n{}begin".format(indent))
            recurse(tree_.children_left[node], depth + 1)
            file.write("\n{}end".format(indent))
            file.write("\n{}else  // if {} > {}".format(indent, name, threshold))
            file.write("\n{}begin".format(indent))
            recurse(tree_.children_right[node], depth + 1)
            file.write("\n{}end".format(indent))
        else:
            file.write("\n{}{} <= 64'd{};".format(indent, y_name, int(tree_.value[node][0][0]*divide_rate)))
            file.write("\n{}Solved[{}] <= 1;".format(indent, y_num))
    recurse(0, 1)
    file.write("\nend")

    

def gen_verilog(a_random_forest, filename):
    #import sys
    file = open(filename, "w")
    file.write('module predictor(result, finished, write_enable, write_address,\
 write_data, start, clk, rst);\n')
    file.write('\noutput reg[63:0]result; \n output reg finished; \n input write_enable; \
            \n input [13:0]write_address; \n input [7:0]write_data; \n input start; \
            \n input clk; \n input rst; \n parameter NUM_DATA = {}; \
            \n reg [7:0] Data [NUM_DATA:0]; \n reg [{}:0] Solved; \n reg [63:0]y[{}:0]; \
            \n reg [63:0]Solution_buffer;\ninitial finished = 0;'.format(a_random_forest.n_features_*8, \
            a_random_forest.n_estimators-1, a_random_forest.n_estimators-1))
    file.write('\nalways@(posedge clk) \n begin \n if(rst) \n begin \n Solved <= 0; \
           \n Solution_buffer = 0; \n finished <= 0; \n end \n //Before running anything, load data\
 from data collection. \n if(write_enable && !rst) \
           \n Data[write_address] <= write_data; \
           \n Solved <= 0;\
           \n //When the data finishes loading, run the trees \
           \n //When each tree finishes, it flips a bit of solved.')
    count = 0;
    result_str = '('
    for a_tree in a_random_forest.estimators_:
        tree_to_code(a_tree,count,a_random_forest.n_estimators,file)
        result_str += 'y['+str(count)+'] + '
        count += 1
        file.write('\n')
    
    file.write("\nif(Solved == {}'b{})".format(a_random_forest.n_estimators,''.join(['1']*a_random_forest.n_estimators)))
    file.write('\n\t begin \n Solution_buffer = {})/{};'.format(result_str[:-3], \
            str(a_random_forest.n_estimators)))
    file.write('\nresult = Solution_buffer; \n finished <= ~finished; \n Solved <= 0;')
    file.write('\nend \n end \n \n endmodule')
    file.close()


def send_float(float_value,ser):
    #import serial
    from time import sleep      
   
    
    fixed_values = int(float_value*divide_rate)
    
    #print ('Value to translate: ',fixed_values)
    binary_test = str(bin(fixed_values))
    binary_test = binary_test.split('b', 1)[-1]
    binary_test = binary_test.zfill(64)
    #print ('Value in binary: ' + binary_test)
    count = 0
    index_count = 0
    chunk_to_send = ''
    msg_array = [None] * 8

    for c in binary_test:
        chunk_to_send = chunk_to_send + c
        count = count +1
        if (count % 8 == 0):
            byte_to_send = int(chunk_to_send,2)
            char_to_send = str(chr(byte_to_send))
            msg_array[index_count] = char_to_send
            index_count = index_count +1
            chunk_to_send = ''
    
    
    count = 0
    msg_array.reverse()
    for i in range(len(msg_array)-1):
        ser.write(msg_array[i].encode('ISO-8859-1'))
        sleep(64/9600)
    ser.write(msg_array[-1].encode('ISO-8859-1'))

def listen(ser):
    return ser.read(8)
    

def ser_com(values):
    import serial  
    port = "COM4"
    baud = 9600
    ser = serial.Serial(port, baud, timeout=1)
    for value in values:
        send_float(value,ser)
    result = listen(ser)
    #print(result)
    return result

#ser_com(test_list)

#ser_com([1000,1000,1000,1000,1000,1000,1000,1005,1000,1000,1000,1000,1000])

#ser_com([0,0,0,0,0,0,0,0,0,0,0,0,0])


#a_result=ser_com(test_list)

#str(a_result)[:-1].split('\\x')[1:]

def get_result(a_list):
    return int.from_bytes(ser_com(a_list),byteorder='big')/divide_rate

def predict(pandas_df):
    return [get_result(obs.tolist()) for obs in pandas_df.values]
            

    
module predictor(result, finished, write_enable, write_address, write_data, start, clk, rst);

output reg[63:0]result; 
 output reg finished; 
 input write_enable;             
 input [13:0]write_address; 
 input [7:0]write_data; 
 input start;             
 input clk; 
 input rst; 
 parameter NUM_DATA = 40;             
 reg [7:0] Data [NUM_DATA:0]; 
 reg [9:0] Solved; 
 reg [63:0]y[9:0];             
 reg [63:0]Solution_buffer;
initial finished = 0;
always@(posedge clk) 
 begin 
 if(rst) 
 begin 
 Solved <= 0;            
 Solution_buffer = 0; 
 finished <= 0; 
 end 
 //Before running anything, load data from data collection. 
 if(write_enable && !rst)            
 Data[write_address] <= write_data;            
 Solved <= 0;           
 //When the data finishes loading, run the trees            
 //When each tree finishes, it flips a bit of solved.
if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3274950000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd637350000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd186525000000)
        begin
          y[0] <= 64'd42339621945525;
          Solved[0] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 186525000000
        begin
          y[0] <= 64'd330484812209302;
          Solved[0] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 637350000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1280700000000)
        begin
          y[0] <= 64'd877712201639344;
          Solved[0] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1280700000000
        begin
          y[0] <= 64'd1663825600000000;
          Solved[0] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3274950000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd6849650000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd4805000000000)
        begin
          y[0] <= 64'd4225666666666666;
          Solved[0] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 4805000000000
        begin
          y[0] <= 64'd5528922222222222;
          Solved[0] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 6849650000000
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd1522450000000)
        begin
          y[0] <= 64'd8018050000000000;
          Solved[0] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 1522450000000
        begin
          y[0] <= 64'd9467800000000000;
          Solved[0] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd90350000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd30089147949)
        begin
          y[0] <= 64'd2442282126787;
          Solved[0] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 30089147949
        begin
          y[0] <= 64'd26305831309464;
          Solved[0] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 90350000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd205410009765)
        begin
          y[0] <= 64'd51988771666500;
          Solved[0] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 205410009765
        begin
          y[0] <= 64'd87860980392352;
          Solved[0] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd70044750976)
        begin
          y[0] <= 64'd1978621226216;
          Solved[0] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 70044750976
        begin
          y[0] <= 64'd77736764706250;
          Solved[0] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd10549999)
        begin
          y[0] <= 64'd231899718369;
          Solved[0] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 10549999
        begin
          y[0] <= 64'd3036686328;
          Solved[0] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3274950000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd617960009765)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd163241943359)
        begin
          y[1] <= 64'd39952285485164;
          Solved[1] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 163241943359
        begin
          y[1] <= 64'd287172751541850;
          Solved[1] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 617960009765
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1240400000000)
        begin
          y[1] <= 64'd875574189230769;
          Solved[1] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1240400000000
        begin
          y[1] <= 64'd1612532634782608;
          Solved[1] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3274950000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd5886750000000)
      begin
        if({Data[15],Data[14],Data[13],Data[12],Data[11],Data[10],Data[9],Data[8]} <= 64'd55959700000000)
        begin
          y[1] <= 64'd4271300000000000;
          Solved[1] <= 1;
        end
        else  // if {Data[15],Data[14],Data[13],Data[12],Data[11],Data[10],Data[9],Data[8]} > 55959700000000
        begin
          y[1] <= 64'd5283833333333334;
          Solved[1] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 5886750000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7766700000000)
        begin
          y[1] <= 64'd6779485714285715;
          Solved[1] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7766700000000
        begin
          y[1] <= 64'd8206485714285715;
          Solved[1] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd77804998779)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd25010250854)
        begin
          y[1] <= 64'd2074343425045;
          Solved[1] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 25010250854
        begin
          y[1] <= 64'd20157108480000;
          Solved[1] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 77804998779
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd124255004882)
        begin
          y[1] <= 64'd40259433548709;
          Solved[1] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 124255004882
        begin
          y[1] <= 64'd77398260869130;
          Solved[1] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd132394750976)
        begin
          y[1] <= 64'd1743197348905;
          Solved[1] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 132394750976
        begin
          y[1] <= 64'd75862679740000;
          Solved[1] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd10549999)
        begin
          y[1] <= 64'd242111098961;
          Solved[1] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 10549999
        begin
          y[1] <= 64'd3058164546;
          Solved[1] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd2974400000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd566838574218)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd176954443359)
        begin
          y[2] <= 64'd43213694609375;
          Solved[2] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 176954443359
        begin
          y[2] <= 64'd310429178260869;
          Solved[2] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 566838574218
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1126100000000)
        begin
          y[2] <= 64'd806776929850746;
          Solved[2] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1126100000000
        begin
          y[2] <= 64'd1421241873913043;
          Solved[2] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 2974400000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd6668700000000)
      begin
        if({Data[15],Data[14],Data[13],Data[12],Data[11],Data[10],Data[9],Data[8]} <= 64'd55959700000000)
        begin
          y[2] <= 64'd4444250000000000;
          Solved[2] <= 1;
        end
        else  // if {Data[15],Data[14],Data[13],Data[12],Data[11],Data[10],Data[9],Data[8]} > 55959700000000
        begin
          y[2] <= 64'd5851440000000000;
          Solved[2] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 6668700000000
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd1522450000000)
        begin
          y[2] <= 64'd7806355555555555;
          Solved[2] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 1522450000000
        begin
          y[2] <= 64'd9467800000000000;
          Solved[2] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd76545001220)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd26079251098)
        begin
          y[2] <= 64'd2026267354020;
          Solved[2] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 26079251098
        begin
          y[2] <= 64'd21143184666400;
          Solved[2] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 76545001220
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd140000000000)
        begin
          y[2] <= 64'd40917755000833;
          Solved[2] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 140000000000
        begin
          y[2] <= 64'd76990833332916;
          Solved[2] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1692750000000)
        begin
          y[2] <= 64'd1567609450882;
          Solved[2] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1692750000000
        begin
          y[2] <= 64'd70656722691428;
          Solved[2] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7734200000000)
        begin
          y[2] <= 64'd3655381324;
          Solved[2] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7734200000000
        begin
          y[2] <= 64'd617111012061;
          Solved[2] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd2996550000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd562638574218)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd148678442382)
        begin
          y[3] <= 64'd38438440955364;
          Solved[3] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 148678442382
        begin
          y[3] <= 64'd258663639320388;
          Solved[3] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 562638574218
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1174700000000)
        begin
          y[3] <= 64'd806173191666666;
          Solved[3] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1174700000000
        begin
          y[3] <= 64'd1541810337500000;
          Solved[3] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 2996550000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd6332000000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd4658150000000)
        begin
          y[3] <= 64'd4177800000000000;
          Solved[3] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 4658150000000
        begin
          y[3] <= 64'd5178237500000000;
          Solved[3] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 6332000000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7766700000000)
        begin
          y[3] <= 64'd7117020000000000;
          Solved[3] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7766700000000
        begin
          y[3] <= 64'd8179400000000000;
          Solved[3] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd83990002441)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd25010250854)
        begin
          y[3] <= 64'd2015752589029;
          Solved[3] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 25010250854
        begin
          y[3] <= 64'd22953578961475;
          Solved[3] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 83990002441
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd167000000000)
        begin
          y[3] <= 64'd44145103939545;
          Solved[3] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 167000000000
        begin
          y[3] <= 64'd73005454545000;
          Solved[3] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd70044750976)
        begin
          y[3] <= 64'd1500064822400;
          Solved[3] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 70044750976
        begin
          y[3] <= 64'd64741503268333;
          Solved[3] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd10050000)
        begin
          y[3] <= 64'd221529939187;
          Solved[3] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 10050000
        begin
          y[3] <= 64'd2935734275;
          Solved[3] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3274950000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd573270019531)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd174523706054)
        begin
          y[4] <= 64'd44722248139880;
          Solved[4] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 174523706054
        begin
          y[4] <= 64'd304429427906976;
          Solved[4] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 573270019531
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1229331542968)
        begin
          y[4] <= 64'd842707465882352;
          Solved[4] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1229331542968
        begin
          y[4] <= 64'd1628862857142857;
          Solved[4] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3274950000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd6055950000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd4701950000000)
        begin
          y[4] <= 64'd4224178571428571;
          Solved[4] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 4701950000000
        begin
          y[4] <= 64'd5357383333333334;
          Solved[4] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 6055950000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7771500000000)
        begin
          y[4] <= 64'd6934560000000000;
          Solved[4] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7771500000000
        begin
          y[4] <= 64'd8828400000000000;
          Solved[4] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd76004998779)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd26079251098)
        begin
          y[4] <= 64'd1738555122247;
          Solved[4] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 26079251098
        begin
          y[4] <= 64'd22269336257368;
          Solved[4] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 76004998779
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd188325000000)
        begin
          y[4] <= 64'd45355961587619;
          Solved[4] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 188325000000
        begin
          y[4] <= 64'd80412222221333;
          Solved[4] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd70044750976)
        begin
          y[4] <= 64'd1469506974855;
          Solved[4] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 70044750976
        begin
          y[4] <= 64'd70238692812000;
          Solved[4] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd10050000)
        begin
          y[4] <= 64'd305593023719;
          Solved[4] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 10050000
        begin
          y[4] <= 64'd2913746497;
          Solved[4] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3583600000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd623450000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd164984802246)
        begin
          y[5] <= 64'd40664310180109;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 164984802246
        begin
          y[5] <= 64'd288702298924731;
          Solved[5] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 623450000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1213050000000)
        begin
          y[5] <= 64'd879745139655172;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1213050000000
        begin
          y[5] <= 64'd1550237242553191;
          Solved[5] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3583600000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd5886750000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd5170750000000)
        begin
          y[5] <= 64'd4759000000000000;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 5170750000000
        begin
          y[5] <= 64'd5402875000000000;
          Solved[5] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 5886750000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7630850000000)
        begin
          y[5] <= 64'd6821600000000000;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7630850000000
        begin
          y[5] <= 64'd8524000000000000;
          Solved[5] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd78795001220)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd25010250854)
        begin
          y[5] <= 64'd1790527750492;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 25010250854
        begin
          y[5] <= 64'd20070808908275;
          Solved[5] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 78795001220
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd135150000000)
        begin
          y[5] <= 64'd39414724616538;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 135150000000
        begin
          y[5] <= 64'd81489166666250;
          Solved[5] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd70044750976)
        begin
          y[5] <= 64'd1617556400035;
          Solved[5] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 70044750976
        begin
          y[5] <= 64'd78180035652727;
          Solved[5] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd10838550000000)
        begin
          y[5] <= 64'd3612637541;
          Solved[5] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 10838550000000
        begin
          y[5] <= 64'd727166533790;
          Solved[5] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd2579600000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd621750000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd160259448242)
        begin
          y[6] <= 64'd39258217009916;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 160259448242
        begin
          y[6] <= 64'd282630289805825;
          Solved[6] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 621750000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1216550000000)
        begin
          y[6] <= 64'd873100316363636;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1216550000000
        begin
          y[6] <= 64'd1552465476190476;
          Solved[6] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 2579600000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd5924350000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3579500000000)
        begin
          y[6] <= 64'd2858000000000000;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3579500000000
        begin
          y[6] <= 64'd5051020000000000;
          Solved[6] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 5924350000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7675850000000)
        begin
          y[6] <= 64'd6806566666666667;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7675850000000
        begin
          y[6] <= 64'd8269400000000000;
          Solved[6] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd69404998779)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd24519000244)
        begin
          y[6] <= 64'd1953789617540;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 24519000244
        begin
          y[6] <= 64'd20358456028510;
          Solved[6] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 69404998779
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd123550000000)
        begin
          y[6] <= 64'd40266962424848;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 123550000000
        begin
          y[6] <= 64'd71637460317142;
          Solved[6] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1492982910156)
        begin
          y[6] <= 64'd1552509521215;
          Solved[6] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1492982910156
        begin
          y[6] <= 64'd78718253970000;
          Solved[6] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd25049999)
        begin
          y[6] <= 64'd117667793503;
          Solved[6] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 25049999
        begin
          y[6] <= 64'd2384907874;
          Solved[6] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd2557450000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd587079980468)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd150739208984)
        begin
          y[7] <= 64'd38608640778210;
          Solved[7] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 150739208984
        begin
          y[7] <= 64'd262679972123893;
          Solved[7] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 587079980468
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1138100000000)
        begin
          y[7] <= 64'd834094237878787;
          Solved[7] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1138100000000
        begin
          y[7] <= 64'd1480524476595744;
          Solved[7] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 2557450000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd5597400000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd4431750000000)
        begin
          y[7] <= 64'd3788333333333333;
          Solved[7] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 4431750000000
        begin
          y[7] <= 64'd5065300000000000;
          Solved[7] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 5597400000000
      begin
        if({Data[31],Data[30],Data[29],Data[28],Data[27],Data[26],Data[25],Data[24]} <= 64'd16318000000000)
        begin
          y[7] <= 64'd7378275000000000;
          Solved[7] <= 1;
        end
        else  // if {Data[31],Data[30],Data[29],Data[28],Data[27],Data[26],Data[25],Data[24]} > 16318000000000
        begin
          y[7] <= 64'd6271650000000000;
          Solved[7] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd135150000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd31380297851)
        begin
          y[7] <= 64'd2628063629422;
          Solved[7] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 31380297851
        begin
          y[7] <= 64'd28328457345084;
          Solved[7] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 135150000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd276570019531)
        begin
          y[7] <= 64'd72057166666000;
          Solved[7] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 276570019531
        begin
          y[7] <= 64'd107734285714285;
          Solved[7] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1527450000000)
        begin
          y[7] <= 64'd1724251136164;
          Solved[7] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1527450000000
        begin
          y[7] <= 64'd80245179740000;
          Solved[7] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd10549999)
        begin
          y[7] <= 64'd211404947503;
          Solved[7] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 10549999
        begin
          y[7] <= 64'd2856392872;
          Solved[7] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3579500000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd609950000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd167447448730)
        begin
          y[8] <= 64'd41737063725490;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 167447448730
        begin
          y[8] <= 64'd293073438144329;
          Solved[8] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 609950000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1269150000000)
        begin
          y[8] <= 64'd890137006250000;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1269150000000
        begin
          y[8] <= 64'd1648574358974359;
          Solved[8] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3579500000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd6103300000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd4960800000000)
        begin
          y[8] <= 64'd4533671428571428;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 4960800000000
        begin
          y[8] <= 64'd5496500000000000;
          Solved[8] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 6103300000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7630850000000)
        begin
          y[8] <= 64'd6916860000000000;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7630850000000
        begin
          y[8] <= 64'd8457000000000000;
          Solved[8] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd78704998779)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd21252600097)
        begin
          y[8] <= 64'd1750128758235;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 21252600097
        begin
          y[8] <= 64'd19388848177343;
          Solved[8] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 78704998779
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd140000000000)
        begin
          y[8] <= 64'd40314241404210;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 140000000000
        begin
          y[8] <= 64'd75384385964736;
          Solved[8] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1527450000000)
        begin
          y[8] <= 64'd1588115297703;
          Solved[8] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1527450000000
        begin
          y[8] <= 64'd77176437912000;
          Solved[8] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[31],Data[30],Data[29],Data[28],Data[27],Data[26],Data[25],Data[24]} <= 64'd2219250000000)
        begin
          y[8] <= 64'd2907203700;
          Solved[8] <= 1;
        end
        else  // if {Data[31],Data[30],Data[29],Data[28],Data[27],Data[26],Data[25],Data[24]} > 2219250000000
        begin
          y[8] <= 64'd232993341488;
          Solved[8] <= 1;
        end
      end
    end
  end
end

if(start == 1 && Solved != 10'b1111111111 && !rst)
begin
  if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd150000)
  begin
    if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd3408850000000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd612510009765)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd157594995117)
        begin
          y[9] <= 64'd39740479952830;
          Solved[9] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 157594995117
        begin
          y[9] <= 64'd275638876595744;
          Solved[9] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 612510009765
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd1280700000000)
        begin
          y[9] <= 64'd903098325757575;
          Solved[9] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 1280700000000
        begin
          y[9] <= 64'd1630921875000000;
          Solved[9] <= 1;
        end
      end
    end
    else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 3408850000000
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd5886750000000)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd4788550000000)
        begin
          y[9] <= 64'd4366371428571428;
          Solved[9] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 4788550000000
        begin
          y[9] <= 64'd5284885714285714;
          Solved[9] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 5886750000000
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd7635650000000)
        begin
          y[9] <= 64'd6790783333333333;
          Solved[9] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 7635650000000
        begin
          y[9] <= 64'd8528800000000000;
          Solved[9] <= 1;
        end
      end
    end
  end
  else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 150000
  begin
    if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd350000)
    begin
      if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd80054998779)
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd25010250854)
        begin
          y[9] <= 64'd2029774298368;
          Solved[9] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 25010250854
        begin
          y[9] <= 64'd19243503818958;
          Solved[9] <= 1;
        end
      end
      else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 80054998779
      begin
        if({Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} <= 64'd200969995117)
        begin
          y[9] <= 64'd49144540808484;
          Solved[9] <= 1;
        end
        else  // if {Data[23],Data[22],Data[21],Data[20],Data[19],Data[18],Data[17],Data[16]} > 200969995117
        begin
          y[9] <= 64'd87136666665833;
          Solved[9] <= 1;
        end
      end
    end
    else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 350000
    begin
      if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd5550000)
      begin
        if({Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} <= 64'd172644750976)
        begin
          y[9] <= 64'd1715993375415;
          Solved[9] <= 1;
        end
        else  // if {Data[39],Data[38],Data[37],Data[36],Data[35],Data[34],Data[33],Data[32]} > 172644750976
        begin
          y[9] <= 64'd73448235296000;
          Solved[9] <= 1;
        end
      end
      else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 5550000
      begin
        if({Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} <= 64'd10850000)
        begin
          y[9] <= 64'd221232943128;
          Solved[9] <= 1;
        end
        else  // if {Data[7],Data[6],Data[5],Data[4],Data[3],Data[2],Data[1],Data[0]} > 10850000
        begin
          y[9] <= 64'd2948117850;
          Solved[9] <= 1;
        end
      end
    end
  end
end

if(Solved == 10'b1111111111)
	 begin 
 Solution_buffer = (y[0] + y[1] + y[2] + y[3] + y[4] + y[5] + y[6] + y[7] + y[8] + y[9])/10;
result = Solution_buffer; 
 finished <= ~finished; 
 Solved <= 0;
end 
 end 
 
 endmodule
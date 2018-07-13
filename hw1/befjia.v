module befjia;
  initial #50 $finish;
  initial
  begin
    #1 $display(" b 1");
    #1 fork
      #1 $display(" b 1 f 1");
      $display(" b 1 f 2");
      #5 $display(" b 1 f 3");
      #2 begin
	$display(" b 1 f 4 b 1");
	#1 $display(" b 1 f 4 b 2");
	$display(" b 1  f 4 b 3");
      end
    join
    $display(" b 2");
  end

  always fork
    #3 $display(" f 1");
    begin
      #1 $display(" f 2 b 1");
      #2 $display(" f 2 b 2");
      #3 $display(" f 2 b 3");
    end

    begin
      #10 $display(" f 3 b 1");
      #9 $display(" f 3 b 2");
      #8 $display(" f 3 b 3");
    end

    #5 fork
      #1 $display(" f 4 b 1");
      #2 $display(" f 4 b 2");
      #3 $display(" f 4 b 3");

    join
    #1 $display(" f 5");
  join
endmodule

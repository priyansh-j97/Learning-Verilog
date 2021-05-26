//this is the testbench file
//this will be executed finally, just like "main file" in "C/C++"
`timescale 1ms/1ms
`include "hello.v" //calling the design file, just like header file in "C/C++"

module hello_tb;
    reg A;
    wire B;

    hello uut(A,B); //design file's module instantiation

    //although everything in verilog works parallelly, but the code inside "initial begin" and "end" gets compiled serially 
    initial begin 
        //the bottom 2 lines are for simulation purposes
        $dumpfile("hello_tb.vcd"); //this file will hold the simulation results
        $dumpvars(0,hello_tb);
        
        //test parameters to be mentioned here
        A=1;
        #20; //this is for giving 20ms delay

        A=0;
        #20;

        A=1;
        #20;

        A=0;
        #20;

        $display("Test Complete!"); //for displaying message on the console window

    end
    
endmodule
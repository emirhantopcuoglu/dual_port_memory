module ram(
  input clk,
  input [3:0] address,
  input [15:0] data_in,
  output reg [15:0] data_out);

  reg [15:0] memory [15:0]; // 16 bit veri öbeğine sahip 16 satırlık bellek

  always @(posedge clk) begin
    memory[address] <= data_in; // yükselen kenarda yazar
  end

  always @(negedge clk) begin
    data_out <= memory[address]; // düşen kenarda okur
  end

endmodule

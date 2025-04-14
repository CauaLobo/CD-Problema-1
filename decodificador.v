module decodificador (input a, b, c ,d ,e, // Entradas chaves SW9 a SW5 

output seg1, seg2, seg3, seg4, seg5, seg6, seg7, // saidas caracter Hex 2  caracteres 

seg8, seg9, seg10, seg11, seg12, seg13, seg14, // saidas Hex 1 Hexadecimal Mais significativo 

seg15, seg16, seg17, seg18, seg19, seg20, seg21, // saidas Hex 0 Hexadecimal Menos significativo 

led1, led2, led3, led4, led5, led6, led7); // saidas do led9 ao led 3 Binarios 

		wire T1;
	
	caractere(.a(a), .b(b), .c(c) ,.d(d) , .e(e), .seg1(seg1), .seg2(seg2), .seg3(seg3), .seg4(seg4), .seg5(seg5), .seg6(seg6), .seg7(seg7)); // caracteres da tabela ascii
	
	hexadecimal_mais(.a(a), .b(b), .c(c) ,.d(d) , .e(e), .seg1(seg8), .seg2(seg9), .seg3(seg10), .seg4(seg11), .seg5(seg12), .seg6(seg13), .seg7(seg14)); // hexadecimal correspondente ao mais significativo
	
	hexadecimal_menos(.a(a), .b(b), .c(c) ,.d(d) , .e(e), .seg1(seg15), .seg2(seg16), .seg3(seg17), .seg4(seg18), .seg5(seg19), .seg6(seg20), .seg7(seg21)); // hexadecimal correspondente ao menos significativo
	
	binarios(.a(a), .b(b), .c(c) ,.d(d) , .e(e), .led1(led1), .led2(led2), .led3(led3), .led4(led4), .led5(led5), .led6(led6), .led7(led7)); // leds correspondentes ao numero binario asceso = 1 apagado = 0
	
	
	

endmodule
module hexadecimal_mais (input a, b, c ,d ,e,
output seg1, seg2, seg3, seg4, seg5, seg6, seg7);


// negações de entrada
	
	wire na, nb, nc, nd, ne;
		
			not nota(na, a);
			not notb(nb, b);
			not notc(nc, c);
			not notd(nd, d);
			not note(ne, e);
	// saidas

  wire hmA1, hmA2, hmA3, hmA4, hmA5; // segmento A Hex 1
		
		and a1 (hmA1, b, d);
		and a2 (hmA2, b, c);
		and a3 (hmA3, a, nd, e);
		and a4 (hmA4, a, c);
		and a5 (hmA5, a, b);
		or saidaAHm (seg1, hmA1, hmA2, hmA3, hmA4, hmA5);
	


	
	and b1 (seg2, a,nb,nc,d);// segmento B Hex 1
		

			
	and saidaCHm (seg3, b, nb);// Segmento C Hex 1
	
 		

	wire hmD1, hmD2, hmD3, hmD4, hmD5;  // segmento D Hex 1
	
		and d1 (hmD1, b, d);
		and d2 (hmD2, b, c);
		and d3 (hmD3, a, nd, e);
		and d4 (hmD4, a, c);
		and d5 (hmD5, a, b);
		or saidaDHm (seg4, hmD1, hmD2, hmD3, hmD4, hmD5);


	wire hmE1, hmE2; // segmento E Hex 1
	
		and e1 (hmE1, na);
		and e2 (hmE2, nb,nc);
		or saidaEHm (seg5, hmE1, hmE2);
		

	wire hmF1, hmF2, hmF3; // segmento F Hex 1
	
		and f1 (hmF1, na,nb);
		and f2 (hmF2, na,nc,nd);
		and f3 (hmF3, nb,nc,nd,ne);
		or saidaFHm (seg6, hmF1, hmF2, hmF3);

		
	wire hmG1, hmG2; // segmento G Hex 1
		
		and g1 (hmG1, a, c);
		and g2 (hmG2, a, b);
		or saidaGHm (seg7, hmG1, hmG2);

	

endmodule
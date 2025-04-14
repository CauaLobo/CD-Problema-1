module hexadecimal_menos (input a, b, c ,d ,e,
output seg1, seg2, seg3, seg4, seg5, seg6, seg7);


		// wire negacao
		wire na, nb, nc, nd, ne; 
		
			not nota(na, a);
			not notb(nb, b);
			not notc(nc, c);
			not notd(nd, d);
			not note(ne, e);
		
		
		wire ha1, ha2, ha3, ha4, ha5,ha6;  // segmento A Hex 0 
			
			and a1 (ha1, na, nb, nc, nd, e);
			and a2 (ha2, nb, c, nd, ne);
			and a3 (ha3, b, nc, d, ne);
			and a4 (ha4, a, c);
			and a5 (ha5, a, b);
			and a6 (ha6,b,c,nd,e);
			or saidaha (seg1,  ha1, ha2, ha3, ha4, ha5,ha6);
			
		wire hb1, hb2, hb3, hb4;  // segmento B Hex 0 
			
			and b1 (hb1, na,nb,c,nd,e);
			and b2 (hb2, na,c,d,ne);
			and b3 (hb3, na,b,c,d);
			and b4 (hb4, a,nb,nc,nd);
			or saidahb (seg2, hb1, hb2, hb3, hb4);
			
		wire hc1, hc2, hc3; // segmento C Hex 0 
		
			and c1 (hc1, na,nb,nc,d,ne);
			and c2 (hc2, na,b,nc,d,e);
			and c3 (hc3, a,nb,nc,nd);
			or saidahc (seg3, hc1, hc2, hc3);
			
		wire hd1, hd2, hd3, hd4, hd5, hd6,hd7; // segmento D Hex 0 
			
			and d1 (hd1, nb, nc, nd, e);
			and d2 (hd2, nb, c, nd, ne);
			and d3 (hd3, nb, c, d, e);
			and d4 (hd4, b, nc, d, ne);
			and d5 (hd5, a, c);
			and d6 (hd6, a, b);
			and d7 (hd7, b,c,nd,e);
			or saidahd (seg4, hd1, hd2, hd3, hd4, hd5, hd6,hd7);
		
		
		wire he1, he2, he3, he4, he5; // segmento E Hex 0 
			
			and e1 (he1, na, nb, e);
			and e2 (he2, na, c, nd);
			and e3 (he3, na, nd, e);
			and e4 (he4, na, b, d, ne);
			and e5 (he5, a, nb, nc, d, ne);
			or saidahe (seg5, he1, he2, he3, he4, he5);

	

	wire hf1, hf2, hf3, hf4, hf5; // segmento F Hex 0 
			
			and f1 (hf1, na, nb, nc, e);
			and f2 (hf2, na, nb, d, e);
			and f3 (hf3, na, nc, d);
			and f4 (hf4, na, b, c, nd, ne);
			and f5 (hf5, nb, nc, d, ne);
			or saidahf (seg6, hf1, hf2, hf3, hf4, hf5);

	
	wire hg1, hg2, hg3, hg4, hg5,hg6; // segmento G Hex 0 
			
			and g1 (hg1, na,nb,nc,nd);
			and g2 (hg2, nb,c,d,e);
			and g3 (hg3, b,nc,d,ne);
			and g4 (hg4, a,c);
			and g5 (hg5, a,b);
			and g6 (hg6, nb,nc,nd,ne);
			or saidahg (seg7, hg1, hg2, hg3, hg4, hg5,hg6);

endmodule

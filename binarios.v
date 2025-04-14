module binarios (input a, b, c ,d ,e,
output led1, led2, led3, led4, led5, led6, led7);


		// wire negacao
		wire na, nb, nc, nd, ne;
		
			not nota(na, a);
			not notb(nb, b);
			not notc(nc, c);
			not notd(nd, d);
			not note(ne, e);
			
	
		wire ba1, ba2, ba3, ba4; // led 9
		
			and a1 (ba1, na,b,d);
			and a2 (ba2, na,b,c);
			and a3 (ba3, a,nb,nc,e);
			and a4 (ba4, a,nb,nc,d);
			or saidal1 (led1, ba1, ba2, ba3, ba4);
		

		wire bb1, bb2, bb3, bb4, bb5; // led 8
			
			and b1 (bb1, na,nb);
			and b2 (bb2, a,b);
			and b3 (bb3, na,nc,nd);
			and b4 (bb4, nb,nd,ne);
			and b5 (bb5, nb,c);
			or saidal2 (led2, bb1, bb2, bb3, bb4, bb5);

		wire bc1, bc2, bc3, bc4; // led 7
			
			and c1 (bc1, na,nb);
			and c2 (bc2, na,nc,nd);
			and c3 (bc3, nb,nc,ne);
			and c4 (bc4, nb,nc,d);
			or saidal3 (led3, bc1, bc2, bc3, bc4);


		wire bd1, bd2, bd3, bd4, bd5; // led 6
			
			and d1 (bd1, b, nc, nd);
			and d2 (bd2, a, nd);
			and d3 (bd3, a, e);
			and d4 (bd4, a, c);
			and d5 (bd5, a, b);
			or saidal4 (led4, bd1, bd2, bd3, bd4, bd5);

		wire be1, be2, be3, be4; // led 5
			
			and e1 (be1, na,nb,c);
			and e2 (be2, na,c,e);
			and e3 (be3, na,c,d);
			and e4 (be4, a,nb,nc,nd);
			or saidal5 (led5, be1, be2, be3, be4);

		wire bf1, bf2, bf3, bf4, bf5, bf6; // led 4
			
			and f1 (bf1, b, c, nd, ne);
			and f2 (bf2, a, nd, e);
			and f3 (bf3, a, c);
			and f4 (bf4, a, b);
			and f5 (bf5, nb, d, ne);
			and f6 (bf6, na, d, e);
			or saidal6 (led6, bf1, bf2, bf3, bf4, bf5, bf6);

		
		wire bg1, bg2, bg3, bg4, bg5, bg6; // led 3
			
			and g1 (bg1, na, nb, e);
			and g2 (bg2, na, nc, nd, e);
			and g3 (bg3, na, b, d, ne);
			and g4 (bg4, na, b, c, ne);
			and g5 (bg5, nb, nc, nd, e);
			and g6 (bg6, a, nb, nc, d, ne);
			or saidal7 (led7, bg1, bg2, bg3, bg4, bg5, bg6);
			

endmodule
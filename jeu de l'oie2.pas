program jeu_de_loie2;

uses crt;

var
jet_de_des,cpt:integer;
//cpt = place sur le plateau

const
casemort=58;
casedepart=0;
casefin=66;


begin
	clrscr;
	randomize;

			writeln('bienvenu dans le jeu de loie');
			cpt:=0;
  repeat
  begin
		writeln('veuillez jetez vos des');
		jet_de_des:= random(11)+2;
		cpt:=(cpt+jet_de_des);
		writeln('votre place est ',cpt);
		readln;		

				if (jet_de_des<2) or (jet_de_des>12) then
				begin
				cpt:=(cpt-jet_de_des);
				writeln('veuillez ecrire une donnee entre 2 et 12, votre place est invalide, retour en arriere');
				end; // invalidation du lancer
						
					if cpt=58 then
					begin
					cpt:=0;
					writeln('vous etes tomber sur la case mort, vous etes renvoyez a la case depart');
					 end;	
							if (cpt>66) then
							begin
							cpt:=66-(jet_de_des-(66-cpt));
							end;	
									 
								if ((cpt mod 9)=0) then
								begin
								cpt:=(cpt)+(jet_de_des); //ancien resultat doubler
								writeln ('votre place doubler est ',cpt);
							 	end;		
							 		
							 		if (cpt=66) then
							 		begin
									writeln('felicitation,vous avez gagner!');
									 end;
	end;							
	until (cpt=66);
end.

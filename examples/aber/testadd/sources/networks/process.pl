%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABER METABOLIC MODEL PREPROCESSOR
% Oliver Ray, 22 October 2008, SWI-Prolog
% input files: aaa.pl
% output files: network.pl
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
write_ln([]) :- write('\n').
write_ln([H|T]) :- write(H), write_ln(T).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- dynamic reaction/6, enzyme/5, inhibitor/3, metabolite/1, orf/1, compartment/1. 
:- dynamic experiment/1, knockout/2, additional_nutrient/3, observed_growth/2.

:- initialization op(500,fx,#).
:- initialization op(500,fx,:).
:- initialization op(400,fx,function).
:- initialization op(400,fx,domain).
:- initialization op(500,fx,not).
:- initialization op(1200,fx,const).
:- initialization op(500,xfx,..).
:- initialization op(500,xfx,<=).
:- initialization op(500,xfx,>=).
:- initialization op(500,xfx,'!=').

process :- 
% OPEN FILES

working_directory(_,'/Users/stefano/Documents/workspace/bristol/XHAIL/examples/aber/testadd/sources/networks'),
%%% working_directory(_,'C:\\Users\\oliver\\RESEARCH\\ABER\\XHAIL MODEL'),
  
style_check(-discontiguous),
  
% [aaa,data],
[temp,data],

% VALIDITY CHECKS

nl, write('% checking metabolites'),

findall(Reactant,(
	reaction(_,_,_,_,Sub,Prod),
	append(Sub,Prod,SubProd),
	member(reactant(_,_,Reactant),SubProd),
	\+ metabolite(Reactant)
),Reactants),
sort(Reactants,SReactants),
findall(_,(
	member(Reactant,SReactants),
	name(Name,Reactant),
	format('\nmetabolite("~a").',[Name])
),_),

nl, write('% checking orfs'),

findall(Orf,(
	enzyme(_,_,_,Complex,_),
	member(Orf,Complex),
	\+ orf(Orf)
),Orfs),
sort(Orfs,SOrfs),
findall(_,(
	member(Orf,SOrfs),
	name(Name,Orf),
	format('\norf("~a").',[Name])
),_),

nl, write('% checking compartments'),

findall(Compartment,(
	reaction(_,_,_,_,Sub,Prod),
	append(Sub,Prod,SubProd),
	member(reactant(Compartment,_,_),SubProd),
	\+ compartment(Compartment)
),Compartments),
sort(Compartments,SCompartments),
findall(_,(
	member(Compartment,SCompartments),
	format('\ncompartment(~a).',[Compartment])
),_),

nl, write('% checking bias'),

findall(_,(
	reaction(ID,Bias,_,_,_,_),
	\+ member(Bias,[assertable,retractable,modifiable,certain]),
	format('\nunknown bias ~a in reaction ~a.',[Bias,ID])
),_),

findall(_,(
	enzyme(ID,Bias,_,_,_),
	\+ member(Bias,[assertable,retractable,modifiable,certain]),
	format('\nunknown bias ~a in enzyme ~a.',[Bias,ID])
),_),

nl, write('% checking associations'),

findall(_,(
	enzyme(EID,_,_,_,Reactions),
	member(RID,Reactions),
	\+ reaction(RID,_,_,_,_,_),
	format('\nunknown reaction ~a in enzyme ~a.',[RID,EID])
),_),

nl, write('% checking data'),

findall(_,(
	knockout(Exp,Orf),name(Name,Orf),
	\+ orf(Orf),
	format('\nunknown orf "~a" in experiment ~a.',[Name,Exp])
),_),

findall(_,(
	additional_nutrient(Exp, Met, _),
	\+ metabolite(Met),
%	format('\nunknown metabolite "~a" in experiment ~a.',[Met,Exp])
%	Changed the order so at least I get the experiment number that gives problems before I get the error.
	format('\nunknown metabolite "~a" in experiment ~a.',[Exp,Met])
),_),

findall(_,(
	additional_nutrient(Exp, _,Comp),
	\+ compartment(Comp),
	format('\nunknown compartment "~a" in experiment ~a.',[Comp,Exp])
),_),

findall(_,(
	observed_growth(Exp,Day),
	\+ day(Day),
	format('\nunknown day "~a" in experiment ~a.',[Day,Exp])
),_),

nl,nl,


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tell('network_temp.pl'),

% PROCESS REACTIONS
  
  write('in_compartment(Experiment,Metabolite,Compartment,Day) :-'),nl,
  write('  start_compound(Metabolite,Compartment).'),nl,nl,
  
  write('in_compartment(Experiment,Metabolite,Compartment,Day) :-'),nl,
  write('  additional_nutrient(Experiment,Metabolite,Compartment).'),nl,nl,

  write('in_compartment(Experiment,M1,Compartment,Day) :-'),nl,
  write('  additional_nutrient(Experiment,M2,Compartment),'),nl,
  write('  contaminated(M2,M1).'),nl,nl,
  
  findall(_,(

	reaction(RNum,Status,EC,Rate,Substrates,Products),name(Enzyme,EC),Enzyme=Enzyme,

	findall(_,(
	
		member(reactant(PCompartment,_PMols,PID),Products),name(Product,PID),
		
		write_ln(['in_compartment(Experiment,\"',Product,'\",',PCompartment,',Day) :-']),
		
		(Status=assertable -> 
		write_ln(['  include(',RNum,'),']);true),
		
		(Status=retractable -> 
		write_ln(['  not exclude(',RNum,'),']);true),
		
		(Status=certain -> 
		true;true),
		
		write_ln(['  Day >= ',Rate,',']),
		
		findall(_,(

			member(reactant(SCompartment,_SMols,SID),Substrates),name(Substrate,SID),
			write_ln(['  in_compartment(Experiment,\"',Substrate,'\",',SCompartment,',Day),'])
		),_),
		
		write_ln(['  catalyst(',RNum,',Complex),']),
		write_ln(['  not inhibited(Experiment,Complex,Day),']),
		write_ln(['  not deleted(Experiment,Complex).']),
		write_ln([])
	
	),_)
	
  ),_),
  
  findall(_,(reaction(RNum,assertable,_,_,_,_),write_ln(['assertable_reaction(',RNum,').'])),_),nl,
  findall(_,(reaction(RNum,retractable,_,_,_,_),write_ln(['retractable_reaction(',RNum,').'])),_),nl,
  findall(_,(reaction(RNum,certain,_,_,_,_),write_ln(['certain_reaction(',RNum,').'])),_),nl,

  write('reactionID(E) :- assertable_reaction(E).'),nl,
  write('reactionID(E) :- retractable_reaction(E).'),nl,
  write('reactionID(E) :- certain_reaction(E).'),nl,

  % PROCESS ENZYMES
  
  here,
  
  nl,write('enzyme_info(Reaction) :- catalyst(Reaction,Complex), Complex\\=unknown.'),nl,	
  write('catalyst(Reaction,unknown) :- not enzyme_info(Reaction).'),nl,nl,		
    
  findall(_,(	
	enzyme(CNum,Stat,EC,ORFS,Reactions),name(Enzyme,EC),Enzyme=Enzyme,	
	
	findall(_,(	
		member(ORF,ORFS),name(Name,ORF),
		write('component("'),write(Name),write('",'),write(CNum),write(')'),
		
		(Stat=modifiable->write_ln([' :- not remove_orf("',Name,'",',CNum,').']);true),
		
		(Stat=certain->write_ln(['.']);true)
		
	),_)
	 
  ),_), 
  
  nl,nl,	
  
  here,
    
  findall(_,(	
	enzyme(CNum,Status,EC,ORFS,Reactions),name(Enzyme,EC),Enzyme=Enzyme,	
	
	findall(_,(	
		member(R,Reactions),
		write('catalyst('),write(R),write(','),write(CNum),write(')'),
		
		(Status=modifiable->write_ln([' :- not remove_reaction(',R,',',CNum,').']);true),
		
		(Status=certain->write_ln(['.']);true)	
		
	),_)
	 
  ),_), 
 
  nl,
  
  here,
  
  findall(_,(write_ln(['unknown_enzyme(unknown).'])),_),nl,
  findall(_,(enzyme(CNum,modifiable,_,_,_),write_ln(['modifiable_enzyme(',CNum,').'])),_),nl,
  findall(_,(enzyme(CNum,certain,_,_,_),write_ln(['certain_enzyme(',CNum,').'])),_),nl,

  write('enzymeID(E) :- unknown_enzyme(E).'),nl,
  write('enzymeID(E) :- modifiable_enzyme(E).'),nl,
  write('enzymeID(E) :- certain_enzyme(E).'),nl,
  
  nl,
  
  findall(_,(metabolite(M),name(N,M),write_ln(['metabolite("',N,'").'])),_),nl,
  findall(_,(orf(M),name(N,M),write_ln(['orf("',N,'").'])),_),nl,
  findall(_,(compartment(C),write_ln(['compartment(',C,').'])),_),nl,
  findall(_,(day(D),write_ln(['day(',D,').'])),_),nl,

  % PROCESS inhibitions
  
  findall(_,(
  	inhibitor(Enz,Met,Comp),name(N,Met),
  	write_ln(['inhibitor(',Enz,',"',N,'",',Comp,').'])
  ),_),nl,
  
  told,
  
  write('% complied network.pl').
  
  
  
  
  
  
  
  
process_substrate_product :-
  
  working_directory(_,'/Users/stefano/Documents/workspace/bristol/XHAIL/examples/aber/testadd/sources/networks'),
  %%% working_directory(_,'C:\\Users\\oliver\\RESEARCH\\ABER\\XHAIL MODEL'),
    
  tell('network_temp.pl'),
  
  findall(_,(
  
  	reaction(ID,Bias,Label,Rate,Sub,Prod),
  	name(Nam,Label),
  	write_ln(['reaction(',ID,',',Bias,',"',Nam,'",',Rate,').']),
  	%write_ln(['reaction(',ID,').']),
  
  	findall(_,(
  		member(reactant(Comp,Mols,Met),Sub),
  		name(Name,Met),
  		write_ln(['substrate(',ID,',',Comp,',"',Name,'").'])
  		%write_ln(['substrate(',ID,',"',Name,'").'])
  	),_),
  	
  	findall(_,(
  		member(reactant(Comp,Mols,Met),Prod),
  		name(Name,Met),
  		write_ln(['product(',ID,',',Comp,',"',Name,'").'])
  		%write_ln(['product(',ID,',"',Name,'").'])
  	),_),
  	
  	nl
  	
  ),_),
  
  findall(_,(
  
  	enzyme(ID,Bias,Label,Complex,RIDs),
  	name(Nam,Label),
  	write_ln(['enzyme(',ID,',',Bias,',"',Nam,'").']),
  
  	findall(_,(
  		member(Orf,Complex),
  		name(Name,Orf),
  		write_ln(['complex(',ID,',"',Name,'").'])
  	),_),
  	
  	findall(_,(
  		member(RID,RIDs),
  		write_ln(['catalyse(',ID,',',RID,').'])
  	),_),
  	
  	nl
  	
  ),_),

  told.
  
here.
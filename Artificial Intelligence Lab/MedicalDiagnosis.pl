start:-
goonce,
write("will you like to try again (y/n)?"),
response(Reply),
Reply='n'.
goonce:-
write("what is the patient's name?"),
readln(Patient),
hypothesis(Patient,Disease),
write(Patient, "probably has", Disease).
goonce:-
write("sorry, i am not in position to diagnose"),
write("the disease.").
symptom(Patient,fever):-
write("does",Patient," has a fever (y/n)?"),
response(Reply),
Reply='y',nl.
symptom(Patient,rash):-
write("does", Patient," has a rash (y/n)?"),
response(Reply),
Reply='y',nl.
symptom(Patient,body_ache):-
write("does",Patient," has a body_ache (y/n)?"),
response(Reply),
Reply='y',nl.
symptom(Patient,runny_nose):-
write("does",Patient,"has a runny_nose (y/n)?"),
response(Reply),
Reply='y'.
hypothesis(Patient,flu):-
symptom(patient,fever),
symptom(Patient,body_ache).
hypothesis(Patient,common_cold):-
symptom(Patient,body_ache),
symptom(Patient,runny_nose).
response(Reply):-
readchar(Reply),
write(Reply).


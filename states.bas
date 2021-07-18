' States feed into dig by Jason Page (Page Telegram) 2021

open "statespop.csv" for input as #1
do
if not(eof(1)) then input #1, state$,pop$

'st$="'"+state$+"'"

 shell "./digcp us-states.csv "+state$+" "+pop$

loop until eof(1)
close #1

function letter=letter_corr(im_resize, num_sizetemp)
global templates
comp=[ ];
 for n=1:num_sizetemp
    s=corr2(templates{1,n},im_resize);
    comp=[comp s];
 end
vd=find(comp==max(comp));

if vd==1||vd==2||vd==3||vd==4||vd==5||vd==6||vd==7||vd==8||vd==9||vd==10||vd==11
    letter='A';
elseif vd==12||vd==13||vd==14||vd==15||vd==16||vd==17||vd==18||vd==19||vd==20||vd==21||vd==22
    letter='B';
elseif vd==23||vd==24||vd==25||vd==26||vd==27||vd==28||vd==29||vd==30||vd==31||vd==32||vd==33
    letter='C';
elseif vd==34||vd==35||vd==36||vd==37||vd==38||vd==39||vd==40||vd==41||vd==42||vd==43||vd==44
    letter='D';
elseif vd==45||vd==46||vd==47||vd==48||vd==49||vd==50||vd==51||vd==52||vd==53||vd==54||vd==55
    letter='E';
elseif vd==56||vd==57||vd==58||vd==59||vd==60||vd==61||vd==62||vd==63||vd==64||vd==65||vd==66
    letter='F';
elseif vd==67||vd==68||vd==69||vd==70||vd==71||vd==72||vd==73||vd==74||vd==75||vd==76||vd==77
    letter='G';
elseif vd==78||vd==79||vd==80||vd==81||vd==82||vd==83||vd==84||vd==85||vd==86||vd==87||vd==88
    letter='H';
elseif vd==89||vd==90||vd==91||vd==92||vd==93||vd==94||vd==95||vd==96||vd==97||vd==98||vd==99
    letter='I';
elseif vd==100||vd==101||vd==102||vd==103||vd==104||vd==105||vd==106||vd==107||vd==108||vd==109||vd==110
    letter='J';
elseif vd==111||vd==112||vd==113||vd==114||vd==115||vd==116||vd==117||vd==118||vd==119||vd==120||vd==121
    letter='K';
elseif vd==122||vd==123||vd==124||vd==125||vd==126||vd==127||vd==128||vd==129||vd==130||vd==131||vd==132
    letter='L';
elseif vd==133||vd==134||vd==135||vd==136||vd==137||vd==138||vd==139||vd==140||vd==141||vd==142||vd==143
    letter='M';
elseif vd==144||vd==145||vd==146||vd==147||vd==148||vd==149||vd==150||vd==151||vd==152||vd==153||vd==154
    letter='N';
elseif vd==155||vd==156||vd==157||vd==158||vd==159||vd==160||vd==161||vd==162||vd==163||vd==164||vd==165
    letter='O';
elseif vd==166||vd==167||vd==168||vd==169||vd==170||vd==171||vd==172||vd==173||vd==174||vd==175||vd==176
    letter='P';
elseif vd==177||vd==178||vd==179||vd==180||vd==181||vd==182||vd==183||vd==184||vd==185||vd==186||vd==187
    letter='R';
elseif vd==188||vd==189||vd==190||vd==191||vd==192||vd==193||vd==194||vd==195||vd==196||vd==197||vd==198
    letter='S';
elseif vd==199||vd==200||vd==201||vd==202||vd==203||vd==204||vd==205||vd==206||vd==207||vd==208||vd==209
    letter='T';
elseif vd==210||vd==211||vd==212||vd==213||vd==214||vd==215||vd==216||vd==217||vd==218||vd==219||vd==220
    letter='U';
elseif vd==221||vd==222||vd==223||vd==224||vd==225||vd==226||vd==227||vd==228||vd==229||vd==230||vd==231
    letter='V';
elseif vd==232||vd==233||vd==234||vd==235||vd==236||vd==237||vd==238||vd==239||vd==240||vd==241||vd==242
    letter='Y';
elseif vd==243||vd==244||vd==245||vd==246||vd==247||vd==248||vd==249||vd==250||vd==251||vd==252||vd==253
    letter='Z';
elseif vd==254||vd==255||vd==256||vd==257||vd==258||vd==259||vd==260||vd==261||vd==262||vd==263||vd==264
    letter='W';    
    
end
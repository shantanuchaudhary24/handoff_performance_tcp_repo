BEGIN{
FS = " ";
    }

NR==1{
    timeInit = $1;
}

NR>=1{
    time = $1;
    a = $5
    b = $7
    c = $8
    totalTime = time - timeInit;
    #printf("%d %d %d %s\n",totalTime,a,b,c) >> "file.txt";
    print totalTime,a,b,c >> "file.txt"
    #print a

}

END{ 
    
}

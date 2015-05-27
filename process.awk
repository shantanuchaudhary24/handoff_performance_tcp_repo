#  Author: Shantanu Chaudhary
#  Email : shantanuchaudhary24@gmail.com
#  This script is used to filter RSSI, cellID,
#  timestamp, Mode from raw CSV file from RFSignal
#  tracker application

BEGIN{
    FS=","
}

NR==2{
    timestamp = $5;
    split(timestamp,array," ");
    split(array[4],arraySec,":");
    hours = arraySec[1];
    minutes = arraySec[2];
    seconds = arraySec[3];
    initTime = hours*3600 + minutes*60 + seconds;
    output_file = "processs.txt";
    cellID = $9;
    RSSI= $4;
    Mode = $12;
}

NR>=3
{
timestamp = $5;
minutes = 0;
seconds = 0;
totalTime = 0;
RSSI = $4;
cellID = $9;
Mode = $12;
}

NR>1{
    timestamp = $5;
    split(timestamp,array," ");
    split(array[4],arraySec,":");
    hours = arraySec[1];    
    minutes = arraySec[2];
    seconds = arraySec[3];
    totalTime = hours*3600 + minutes*60 + seconds - initTime;
    #printf("%d %d %d %s\n",RSSI,totalTime,cellID,Mode);
    print RSSI,totalTime,cellID,Mode >> "file.txt"
}

END{ 
    
}

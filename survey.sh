#!/bin/bash

token=`curl -s https://gop.com/mainstream-media-accountability-survey/ | grep csrfmiddlewaretoken | awk '{print $4; print substr($4,8,32);}'`
fname=`shuf -n 1 first`
lname=`shuf -n 1 last`
domain=`shuf -n 1 last`
zip=`shuf -n 1 zip`
data1="csrfmiddlewaretoken=PeL9Mvhf4qnc9bXndH3z0RdTgecfvHtd&question_3382=Yes&question_3383=Yes&question_3384=Yes&question_3385=No&question_3388=&question_3390=&question_3392_0=Yes&question_3392_1=&question_3393_0=No&question_3393_1=&question_3394_0=No&question_3394_1=&question_3395_0=No+opinion&question_3395_1=&question_3396_0=No&question_3396_1=&question_3397_0=No&question_3397_1=&question_3399_0=No&question_3399_1=&question_3400_0=No&question_3400_1=&question_3402_0=No&question_3402_1=&question_3403_0=No&question_3403_1=&question_3404_0=No&question_3404_1=&question_3406_0=No&question_3406_1=&question_3407_0=No&question_3407_1=&question_3408_0=No+opinion&question_3408_1=&question_3409_0=No&question_3409_1=&question_3410_0=No&question_3410_1=&question_3411=No&full_name=$fname+$lname&first_name=&last_name=&email=$fname.$lname"
data2="40$domain.com&postal_code=$zip&svid=306&utm_source=NA&utm_medium=NA&utm_campaign=NA&utm_content=NA&ad_flight=NA&ilist=&pgtype=None"

echo "$fname $lname $domain $zip"

curl -s "https://gop.com/survey/mainstream-media-accountability-survey/" -H "Host: gop.com" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Referer: https://gop.com/mainstream-media-accountability-survey/" -H "Cookie: csrftoken=PeL9Mvhf4qnc9bXndH3z0RdTgecfvHtd; AMCV_4B3221AA564EF52E7F000101"%"40AdobeOrg=-1248264605"%"7CMCIDTS"%"7C17216"%"7CMCMID"%"7C11833309381635972314888415501391311375"%"7CMCAAMLH-1488043762"%"7C9"%"7CMCAAMB-1488051407"%"7CNRX38WO0n5BH8Th-nqAG_A"%"7CMCOPTOUT-1487453807s"%"7CNONE"%"7CMCAID"%"7CNONE; mbox=PC#1487438962202-747371.28_39#1488656208|check#true#1487446668|session#1487446607010-954338#1487448468; _ga=GA1.2.401790190.1487438963; csid=403355170; __distillery=ee70bea_0a7ea734-27c5-415c-b42e-7ec1135c91c3-5efe395c6-cbda2fc52fd9-6a17; s_fid=0BBBA078F043C670-321DA5148B7F9515; AMCVS_4B3221AA564EF52E7F000101"%"40AdobeOrg=1; s_cc=true; s_sq=gopdjtlive"%"3D"%"2526c."%"2526a."%"2526activitymap."%"2526page"%"253Dhttps"%"25253A"%"25252F"%"25252Fgop.com"%"25252Fmainstream-media-accountability-survey"%"25252F"%"2526link"%"253DRecord"%"252520My"%"252520Vote"%"252520"%"25253E"%"25253E"%"2526region"%"253Dsurvey-form"%"2526.activitymap"%"2526.a"%"2526.c; _gat_a2c5203515992431f441bf074a1b948b=1" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" --data "$data1"%"$data2" >> /dev/null

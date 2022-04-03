function job
    set resumeFolder ~/MEGA/Resume
    set jobSearchFolder ~/MEGA/Job\ Search\ Summer\ 2022
    set jobTrackCSV ~/MEGA/Job\ Search\ Summer\ 2022/JobSearchSummer22.csv

    cp -r $resumeFolder $jobSearchFolder/$argv
    echo $argv,(date +"%B %e"),No Response, >>$jobTrackCSV
    touch >>$jobSearchFolder/$argv/info.txt

    nautilus ~/MEGA/Job\ Search\ Summer\ 2022/$argv
    code $jobSearchFolder/$argv/info.txt
end

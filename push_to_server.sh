rm -r how-to
broccoli build how-to
scp -r how-to tylermar@login.engin.umich.edu:/home/tylermar/Public/html
rm -r how-to
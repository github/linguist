data _null_;
length a $5;
do n=1 to 5;
  a="*";
  do i=2 to n;
    a=trim(a) !! "*";
  end;
  put a;
end;
run;

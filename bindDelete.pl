#!usr/bin/perl
use DBI;
$dbh = DBI->connect("DBI:mysql:practice","root","")or die $DBI::errstr;
$sth = $dbh->prepare("DELETE d1 from dept d1 inner join dept d2 where d1.deptip > d2.deptip and d1.deptname =  d2.deptname") or die $DBI::errstr;
$sth->execute();
print "No. of rows deleted ".$sth->rows;
$sth->finish();
$sth->commit() or die $DBI::errstr;
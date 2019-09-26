#!usr/bin/perl
use DBI;
print "Please enter deptname: ";
$deptname = <STDIN>;
$dbh = DBI->connect("DBI:mysql:practice", "root","") or die $DBI::errstr;
$sth = $dbh->prepare("update dept set deptname=? where deptip = 1");
$sth->execute($deptname)or die $DBI::errstr;
print "No. of rows updated ". $sth->rows;
$sth->finish();
$dbh->commit()or $DBI::errstr;
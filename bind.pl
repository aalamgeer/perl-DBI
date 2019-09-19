#!use/bin/perl
use DBI;

$dbh = DBI->connect("DBI:mysql:practice", "root", "") or die $DBI::errstr;
$sth = $dbh->prepare("INSERT INTO dept (deptip, deptname) (?,?)");
$dptip = 52;
$dptname = "Develpment";
$sth->execute($dptip,$dptname) or die $DBI::errstr;
$sth->finish();
$sth->commit or die $DBI::errstr;




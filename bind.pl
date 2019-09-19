#!use/bin/perl
use DBI;

$dbh = DBI->connect("DBI:mysql:practice", "root", "") or die $DBI::errstr;
$sth = $dbh->prepare("INSERT INTO dept (deptip, deptname) values (?,?)");
$dptip = 53;
$dptname = "Research";
$sth->execute($dptip,$dptname) or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;




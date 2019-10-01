#!use/bin/perl
use DBI;

$dptname = <STDIN>;
$dbh = DBI->connect("DBI:mysql:practice", "root", "") or die $DBI::errstr;
$sth = $dbh->prepare("INSERT INTO dept (deptname) values (?)");
$dptip = 53;
$dptname = "Research";
$sth->execute($dptname) or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr;
$dbh->disconnect or warn $dbh->errstr;




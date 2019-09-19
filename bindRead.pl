#!usr/bin/perl
use DBI;

$id1 = 1;
$id2 = 60;
$dbh = DBI->connect("DBI:mysql:practice", "root", "");
$sth = $dbh->prepare("select * from dept where deptip between ? and ?");
$sth->execute($id1, $id2) or die $DBI::errstr;
print "No. rows found is "+$sth->rows."\n";
while(my @row = $sth->fetchrow_array()){
	my ($deptid, $deptname) = @row;
	print "Dept Id = $deptid, Dept Name = $deptname\n";
}
$sth->finish();
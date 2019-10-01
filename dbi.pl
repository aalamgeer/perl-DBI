#!/usr/bin/perl

use DBI;

my $driver = "mysql"; 
my $database = "practice";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";
my $password = "";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;

my $sth = $dbh->prepare("INSERT INTO dept ( deptname) values( 'Chamical')");

$sth->execute() or die $DBI::errstr;
$sth->finish();
$dbh->commit or die $DBI::errstr; 
$dbh->rollback or die $DBI::errstr;



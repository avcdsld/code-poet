# What You Get Back

sub us {
    if (wantarray) {
        return (1, 1);
    } else {
        return 0;
    }
}

my @together = us();
my $alone    = us();

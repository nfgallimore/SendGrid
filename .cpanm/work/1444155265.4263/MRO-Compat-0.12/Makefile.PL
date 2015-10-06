use inc::Module::Install 1.06;

all_from      'lib/MRO/Compat.pm';

requires      'perl'       => 5.006_000;
test_requires 'Test::More' => '0.47';

if($] < 5.009_005) {
    requires 'Class::C3' => '0.24';
}

# Rebuild README for maintainers
system("pod2text lib/MRO/Compat.pm >README") if -e 'MANIFEST.SKIP';

auto_provides;
WriteAll;


#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE libstorage

#include <boost/test/unit_test.hpp>
#include <boost/algorithm/string.hpp>

#include "storage/SystemInfo/CmdLsscsi.h"


using namespace std;
using namespace storage;


void
check(const vector<string>& input, const vector<string>& output)
{
    Lsscsi lsscsi(false);
    lsscsi.parse(input);

    ostringstream parsed;
    parsed.setf(std::ios::boolalpha);
    parsed << lsscsi;

    string lhs = parsed.str();
    string rhs = boost::join(output, "\n") + "\n";

    BOOST_CHECK_EQUAL(lhs, rhs);
}


BOOST_AUTO_TEST_CASE(parse1)
{
    vector<string> input = {
	"[0:0:0:0]    disk    sata:                           /dev/sda ",
	"[1:0:0:0]    cd/dvd  sata:                           /dev/sr0 ",
	"[6:0:0:0]    disk    usb: 2-1.5:1.0                  /dev/sdb "
    };

    vector<string> output = {
	"data[/dev/sda] -> transport:SATA",
	"data[/dev/sdb] -> transport:USB"
    };

    check(input, output);
}


BOOST_AUTO_TEST_CASE(parse2)
{
    vector<string> input = {
	"[0:0:0:0]    disk                                    /dev/sda "
    };

    vector<string> output = {
	"data[/dev/sda] -> transport:UNKNOWN"
    };

    check(input, output);
}


BOOST_AUTO_TEST_CASE(parse3)
{
    vector<string> input = {
	"[0:0:0:0]    disk    iqn.2014-03.com.example:34878ae1-e5a3-4cd2-b554-1e35aaf544a6,t,0x1  /dev/sda "
    };

    vector<string> output = {
	"data[/dev/sda] -> transport:iSCSI"
    };

    check(input, output);
}


BOOST_AUTO_TEST_CASE(parse4)
{
    vector<string> input = {
	"[1:0:2:0]    disk    fc:0x200300a09827e27e0x650501   /dev/sdb ",
	"[1:0:2:1]    disk    fc:0x200300a09827e27e0x650501   /dev/sdc "
    };

    vector<string> output = {
	"data[/dev/sdb] -> transport:FC",
	"data[/dev/sdc] -> transport:FC"
    };

    check(input, output);
}


BOOST_AUTO_TEST_CASE(parse5)
{
    vector<string> input = {
	"[1:0:0:0]    storage fcoe:0x50001fe1501e6d7b0x660c00  -        ",
	"[1:0:0:1]    disk    fcoe:0x50001fe1501e6d7b0x660c00  /dev/sdb ",
	"[1:0:1:0]    storage fcoe:0x50001fe1501e6d7f0x660b00  -        ",
	"[1:0:1:1]    disk    fcoe:0x50001fe1501e6d7f0x660b00  /dev/sdc "
    };

    vector<string> output = {
	"data[/dev/sdb] -> transport:FCoE",
	"data[/dev/sdc] -> transport:FCoE"
    };

    check(input, output);
}

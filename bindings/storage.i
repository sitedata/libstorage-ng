//
// Common SWIG interface definition for libstorage
//

%module storage

%ignore "get_impl";
%ignore "get_classname";
%ignore "clone";

// Since dynamic exception specifications are deprecated in C++11 we use the
// SWIG %catches feature instead.

%catches(storage::ParseError) storage::humanstring_to_byte(const string&, bool);

%catches(storage::DeviceNotFound) storage::Devicegraph::find_device(sid_t);
%catches(storage::DeviceNotFound) storage::Devicegraph::find_device(sid_t) const;
%catches(storage::HolderNotFound) storage::Devicegraph::find_holder(sid_t, sid_t);
%catches(storage::HolderNotFound) storage::Devicegraph::find_holder(sid_t, sid_t) const;

%catches(storage::DeviceNotFound) storage::BlkDevice::find(const Devicegraph*, const string&);

// order of includes is crucial

%{
// workaround for bsc #593954
#ifdef SWIGPERL
#undef seed
#endif

#include "storage/Utils/HumanString.h"
#include "storage/Devices/Device.h"
#include "storage/Devices/Filesystem.h"
#include "storage/Devices/BlkDevice.h"
#include "storage/Devices/Partition.h"
#include "storage/Devices/PartitionTable.h"
#include "storage/Devices/Disk.h"
#include "storage/Devices/Msdos.h"
#include "storage/Devices/Gpt.h"
#include "storage/Devices/LvmLv.h"
#include "storage/Devices/LvmVg.h"
#include "storage/Holders/Holder.h"
#include "storage/Devicegraph.h"
#include "storage/Environment.h"
#include "storage/Storage.h"
%}

using namespace std;

%include "stdint.i"
%include "std_string.i"
%include "std_vector.i"
%include "std_list.i"

%include "../../storage/StorageInterface.h"
%include "../../storage/Utils/HumanString.h"
%include "../../storage/Devices/Device.h"
%include "../../storage/Devices/Filesystem.h"
%include "../../storage/Devices/BlkDevice.h"
%include "../../storage/Devices/Partition.h"
%include "../../storage/Devices/PartitionTable.h"
%include "../../storage/Devices/Disk.h"
%include "../../storage/Devices/Msdos.h"
%include "../../storage/Devices/Gpt.h"
%include "../../storage/Devices/LvmLv.h"
%include "../../storage/Devices/LvmVg.h"
%include "../../storage/Holders/Holder.h"
%include "../../storage/Devicegraph.h"
%include "../../storage/Environment.h"
%include "../../storage/Storage.h"

using namespace storage;

%template(VectorConstDevicePtr) std::vector<const Device*>;
%template(VectorConstPartitionPtr) std::vector<const Partition*>;
%template(VectorConstFilesystemPtr) std::vector<const Filesystem*>;

%inline %{

    const storage::Disk* to_disk(const storage::Device* device) {
	return dynamic_cast<const storage::Disk*>(device);
    }

    const storage::PartitionTable* to_partition_table(const storage::Device* device) {
	return dynamic_cast<const storage::PartitionTable*>(device);
    }

    const storage::Partition* to_partition(const storage::Device* device) {
	return dynamic_cast<const storage::Partition*>(device);
    }

    const storage::LvmVg* to_lvm_vg(const storage::Device* device) {
	return dynamic_cast<const storage::LvmVg*>(device);
    }

    const storage::LvmLv* to_lvm_lv(const storage::Device* device) {
	return dynamic_cast<const storage::LvmLv*>(device);
    }

    const storage::Filesystem* to_filesystem(const storage::Device* device) {
	return dynamic_cast<const storage::Filesystem*>(device);
    }

%}

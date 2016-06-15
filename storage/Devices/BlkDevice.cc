

#include <iostream>

#include "storage/Utils/AppUtil.h"
#include "storage/Devices/BlkDeviceImpl.h"
#include "storage/Devices/FilesystemImpl.h"
#include "storage/Devices/Ext4.h"
#include "storage/Devices/Btrfs.h"
#include "storage/Devices/Xfs.h"
#include "storage/Devices/Swap.h"
#include "storage/Devices/Ntfs.h"
#include "storage/Devices/Vfat.h"
#include "storage/Holders/User.h"
#include "storage/FreeInfo.h"
#include "storage/FindBy.h"


namespace storage
{

    using namespace std;


    BlkDevice::BlkDevice(Impl* impl)
	: Device(impl)
    {
    }


    BlkDevice::Impl&
    BlkDevice::get_impl()
    {
	return dynamic_cast<Impl&>(Device::get_impl());
    }


    const BlkDevice::Impl&
    BlkDevice::get_impl() const
    {
	return dynamic_cast<const Impl&>(Device::get_impl());
    }


    BlkDevice*
    BlkDevice::find_by_name(Devicegraph* devicegraph, const string& name)
    {
	return storage::find_by_name<BlkDevice>(devicegraph, name);
    }


    const BlkDevice*
    BlkDevice::find_by_name(const Devicegraph* devicegraph, const string& name)
    {
	return storage::find_by_name<const BlkDevice>(devicegraph, name);
    }


    void
    BlkDevice::set_name(const string& name)
    {
	get_impl().set_name(name);
    }


    const string&
    BlkDevice::get_name() const
    {
	return get_impl().get_name();
    }


    const Region&
    BlkDevice::get_region() const
    {
	return get_impl().get_region();
    }


    void
    BlkDevice::set_region(const Region& region)
    {
	get_impl().set_region(region);
    }


    unsigned long long
    BlkDevice::get_size() const
    {
	return get_impl().get_size();
    }


    void
    BlkDevice::set_size(unsigned long long size)
    {
	get_impl().set_size(size);
    }


    string
    BlkDevice::get_size_string() const
    {
	return get_impl().get_size_string();
    }


    const string&
    BlkDevice::get_sysfs_name() const
    {
	return get_impl().get_sysfs_name();
    }


    const string&
    BlkDevice::get_sysfs_path() const
    {
	return get_impl().get_sysfs_path();
    }


    const std::string&
    BlkDevice::get_udev_path() const
    {
	return get_impl().get_udev_path();
    }


    const std::vector<std::string>&
    BlkDevice::get_udev_ids() const
    {
	return get_impl().get_udev_ids();
    }


    ResizeInfo
    BlkDevice::detect_resize_info() const
    {
	return get_impl().detect_resize_info();
    }


    vector<BlkDevice*>
    BlkDevice::get_all(Devicegraph* devicegraph)
    {
	return devicegraph->get_impl().get_devices_of_type<BlkDevice>();
    }


    vector<const BlkDevice*>
    BlkDevice::get_all(const Devicegraph* devicegraph)
    {
	return devicegraph->get_impl().get_devices_of_type<const BlkDevice>();
    }


    void
    BlkDevice::check() const
    {
	Device::check();

	if (!BlkDevice::Impl::is_valid_name(get_name()))
	    cerr << "BlkDevice has invalid name" << endl;
    }


    Filesystem*
    BlkDevice::create_filesystem(FsType fs_type)
    {
	if (num_children() != 0)
	    ST_THROW(WrongNumberOfChildren(num_children(), 0));

	Filesystem* ret = nullptr;

	switch (fs_type)
	{
	    case FsType::EXT4:
		ret = Ext4::create(get_impl().get_devicegraph());
		break;

	    case FsType::BTRFS:
		ret = Btrfs::create(get_impl().get_devicegraph());
		break;

	    case FsType::XFS:
		ret = Xfs::create(get_impl().get_devicegraph());
		break;

	    case FsType::SWAP:
		ret = Swap::create(get_impl().get_devicegraph());
		break;

	    case FsType::NTFS:
		ret = Ntfs::create(get_impl().get_devicegraph());
		break;

	    case FsType::VFAT:
		ret = Vfat::create(get_impl().get_devicegraph());
		break;

	    default:
		ST_THROW(NotImplementedException("unimplemented filesystem type " + toString(fs_type)));
	}

	User::create(get_impl().get_devicegraph(), this, ret);

	return ret;
    }


    bool
    BlkDevice::has_filesystem() const
    {
	return get_impl().has_filesystem();
    }


    Filesystem*
    BlkDevice::get_filesystem()
    {
	return get_impl().get_filesystem();
    }


    const Filesystem*
    BlkDevice::get_filesystem() const
    {
	return get_impl().get_filesystem();
    }


    bool
    is_blk_device(const Device* device)
    {
	return is_device_of_type<const BlkDevice>(device);
    }


    BlkDevice*
    to_blk_device(Device* device)
    {
	return to_device_of_type<BlkDevice>(device);
    }


    const BlkDevice*
    to_blk_device(const Device* device)
    {
	return to_device_of_type<const BlkDevice>(device);
    }

}

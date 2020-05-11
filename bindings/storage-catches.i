
// This file is generated by utils/generate-catches.py.

%exceptionclass storage::Aborted;
%exceptionclass storage::AlignError;
%exceptionclass storage::BtrfsSubvolumeNotFoundByPath;
%exceptionclass storage::DeviceHasWrongType;
%exceptionclass storage::DeviceNotFound;
%exceptionclass storage::DeviceNotFoundByName;
%exceptionclass storage::DeviceNotFoundBySid;
%exceptionclass storage::DeviceNotFoundByUuid;
%exceptionclass storage::DifferentBlockSizes;
%exceptionclass storage::Exception;
%exceptionclass storage::HolderAlreadyExists;
%exceptionclass storage::HolderHasWrongType;
%exceptionclass storage::HolderNotFound;
%exceptionclass storage::HolderNotFoundBySids;
%exceptionclass storage::IOException;
%exceptionclass storage::IndexOutOfRangeException;
%exceptionclass storage::InvalidBlockSize;
%exceptionclass storage::InvalidExtentSize;
%exceptionclass storage::InvalidMountPointPath;
%exceptionclass storage::LockException;
%exceptionclass storage::LogicException;
%exceptionclass storage::LvmLvNotFoundByLvName;
%exceptionclass storage::LvmVgNotFoundByVgName;
%exceptionclass storage::NfsNotFoundByServerAndPath;
%exceptionclass storage::NoIntersection;
%exceptionclass storage::NotInside;
%exceptionclass storage::NullPointerException;
%exceptionclass storage::OutOfMemoryException;
%exceptionclass storage::OverflowException;
%exceptionclass storage::ParseException;
%exceptionclass storage::UnsupportedException;
%exceptionclass storage::WrongNumberOfChildren;
%exceptionclass storage::WrongNumberOfParents;

%catches(storage::ParseException, storage::OverflowException) storage::humanstring_to_byte(const std::string &str, bool classic);
%catches(storage::NullPointerException) storage::is_bcache(const Device *device);
%catches(storage::NullPointerException) storage::is_bcache_cset(const Device *device);
%catches(storage::NullPointerException) storage::is_bitlocker(const Device *device);
%catches(storage::NullPointerException) storage::is_blk_device(const Device *device);
%catches(storage::NullPointerException) storage::is_blk_filesystem(const Device *device);
%catches(storage::NullPointerException) storage::is_btrfs(const Device *device);
%catches(storage::NullPointerException) storage::is_btrfs_subvolume(const Device *device);
%catches(storage::NullPointerException) storage::is_dasd(const Device *device);
%catches(storage::NullPointerException) storage::is_dasd_pt(const Device *device);
%catches(storage::NullPointerException) storage::is_disk(const Device *device);
%catches(storage::NullPointerException) storage::is_dm_raid(const Device *device);
%catches(storage::NullPointerException) storage::is_encryption(const Device *device);
%catches(storage::NullPointerException) storage::is_exfat(const Device *device);
%catches(storage::NullPointerException) storage::is_ext(const Device *device);
%catches(storage::NullPointerException) storage::is_ext2(const Device *device);
%catches(storage::NullPointerException) storage::is_ext3(const Device *device);
%catches(storage::NullPointerException) storage::is_ext4(const Device *device);
%catches(storage::NullPointerException) storage::is_f2fs(const Device *device);
%catches(storage::NullPointerException) storage::is_filesystem(const Device *device);
%catches(storage::NullPointerException) storage::is_filesystem_user(const Holder *holder);
%catches(storage::NullPointerException) storage::is_gpt(const Device *device);
%catches(storage::NullPointerException) storage::is_implicit_pt(const Device *device);
%catches(storage::NullPointerException) storage::is_iso9660(const Device *device);
%catches(storage::NullPointerException) storage::is_jfs(const Device *device);
%catches(storage::NullPointerException) storage::is_luks(const Device *device);
%catches(storage::NullPointerException) storage::is_lvm_lv(const Device *device);
%catches(storage::NullPointerException) storage::is_lvm_pv(const Device *device);
%catches(storage::NullPointerException) storage::is_lvm_vg(const Device *device);
%catches(storage::NullPointerException) storage::is_md(const Device *device);
%catches(storage::NullPointerException) storage::is_md_container(const Device *device);
%catches(storage::NullPointerException) storage::is_md_member(const Device *device);
%catches(storage::NullPointerException) storage::is_md_subdevice(const Holder *holder);
%catches(storage::NullPointerException) storage::is_md_user(const Holder *holder);
%catches(storage::NullPointerException) storage::is_mount_point(const Device *device);
%catches(storage::NullPointerException) storage::is_mountable(const Device *device);
%catches(storage::NullPointerException) storage::is_msdos(const Device *device);
%catches(storage::NullPointerException) storage::is_multipath(const Device *device);
%catches(storage::NullPointerException) storage::is_nfs(const Device *device);
%catches(storage::NullPointerException) storage::is_ntfs(const Device *device);
%catches(storage::NullPointerException) storage::is_partition(const Device *device);
%catches(storage::NullPointerException) storage::is_partition_table(const Device *device);
%catches(storage::NullPointerException) storage::is_partitionable(const Device *device);
%catches(storage::NullPointerException) storage::is_plain_encryption(const Device *device);
%catches(storage::NullPointerException) storage::is_reiserfs(const Device *device);
%catches(storage::NullPointerException) storage::is_stray_blk_device(const Device *device);
%catches(storage::NullPointerException) storage::is_subdevice(const Holder *holder);
%catches(storage::NullPointerException) storage::is_swap(const Device *device);
%catches(storage::NullPointerException) storage::is_udf(const Device *device);
%catches(storage::NullPointerException) storage::is_user(const Holder *holder);
%catches(storage::NullPointerException) storage::is_vfat(const Device *device);
%catches(storage::NullPointerException) storage::is_xfs(const Device *device);
%catches(storage::Exception) storage::light_probe();
%catches(storage::Exception) storage::read_simple_etc_crypttab(const std::string &filename);
%catches(storage::Exception) storage::read_simple_etc_fstab(const std::string &filename);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_bcache(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_bcache(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_bcache_cset(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_bcache_cset(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_bitlocker(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_bitlocker(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_blk_device(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_blk_device(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_blk_filesystem(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_blk_filesystem(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_btrfs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_btrfs(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_btrfs_subvolume(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_btrfs_subvolume(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_dasd(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_dasd(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_dasd_pt(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_dasd_pt(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_disk(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_disk(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_dm_raid(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_dm_raid(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_encryption(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_encryption(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_exfat(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_exfat(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext2(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext2(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext3(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext3(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext4(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ext4(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_f2fs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_f2fs(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_filesystem(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_filesystem(const Device *device);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_filesystem_user(Holder *holder);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_filesystem_user(const Holder *holder);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_gpt(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_gpt(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_implicit_pt(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_implicit_pt(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_iso9660(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_iso9660(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_jfs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_jfs(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_luks(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_luks(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_lvm_lv(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_lvm_lv(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_lvm_pv(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_lvm_pv(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_lvm_vg(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_lvm_vg(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_md(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_md(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_md_container(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_md_container(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_md_member(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_md_member(const Device *device);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_md_subdevice(Holder *holder);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_md_subdevice(const Holder *holder);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_md_user(Holder *holder);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_md_user(const Holder *holder);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_mount_point(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_mount_point(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_mountable(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_mountable(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_msdos(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_msdos(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_multipath(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_multipath(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_nfs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_nfs(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ntfs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_ntfs(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_partition(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_partition(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_partition_table(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_partition_table(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_partitionable(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_partitionable(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_plain_encryption(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_plain_encryption(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_reiserfs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_reiserfs(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_stray_blk_device(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_stray_blk_device(const Device *device);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_subdevice(Holder *holder);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_subdevice(const Holder *holder);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_swap(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_swap(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_udf(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_udf(const Device *device);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_user(Holder *holder);
%catches(storage::HolderHasWrongType, storage::NullPointerException) storage::to_user(const Holder *holder);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_vfat(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_vfat(const Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_xfs(Device *device);
%catches(storage::DeviceHasWrongType, storage::NullPointerException) storage::to_xfs(const Device *device);

%catches(storage::Exception) storage::Actiongraph::Actiongraph(const Storage &storage, Devicegraph *lhs, Devicegraph *rhs);
%catches(storage::Exception) storage::Actiongraph::write_graphviz(const std::string &filename, ActiongraphStyleCallbacks *style_callbacks) const;
%catches(storage::Exception) storage::Actiongraph::write_graphviz(const std::string &filename, GraphvizFlags flags=GraphvizFlags::NAME, GraphvizFlags tooltip_flags=GraphvizFlags::NONE) const;
%catches(storage::AlignError) storage::Alignment::align(const Region &region, AlignPolicy align_policy=AlignPolicy::ALIGN_START_AND_END) const;
%catches(storage::LogicException, storage::Exception) storage::Bcache::add_bcache_cset(BcacheCset *bcache_cset);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Bcache::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Bcache::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound) storage::Bcache::get_backing_device() const;
%catches(storage::DeviceNotFound) storage::Bcache::get_blk_device() const;
%catches(storage::LogicException, storage::Exception) storage::Bcache::remove_bcache_cset();
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::BcacheCset::find_by_uuid(Devicegraph *devicegraph, const std::string &uuid);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::BcacheCset::find_by_uuid(const Devicegraph *devicegraph, const std::string &uuid);
%catches(storage::WrongNumberOfChildren) storage::BlkDevice::create_bcache_cset();
%catches(storage::WrongNumberOfChildren, storage::UnsupportedException) storage::BlkDevice::create_blk_filesystem(FsType fs_type);
%catches(storage::WrongNumberOfChildren, storage::UnsupportedException) storage::BlkDevice::create_filesystem(FsType fs_type);
%catches(storage::DeviceNotFoundByName, storage::DeviceHasWrongType, storage::Exception) storage::BlkDevice::find_by_any_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFoundByName, storage::DeviceHasWrongType, storage::Exception) storage::BlkDevice::find_by_any_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFoundByName, storage::DeviceHasWrongType) storage::BlkDevice::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFoundByName, storage::DeviceHasWrongType) storage::BlkDevice::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_bcache();
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_bcache() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_bcache_cset();
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_bcache_cset() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_blk_filesystem();
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_blk_filesystem() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_encryption();
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_encryption() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_filesystem();
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::get_filesystem() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::BlkDevice::remove_encryption();
%catches(storage::Exception) storage::BlkDevice::set_region(const Region &region);
%catches(storage::Exception) storage::BlkDevice::set_size(unsigned long long size);
%catches(storage::Exception) storage::BlkFilesystem::detect_content_info() const;
%catches(storage::WrongNumberOfChildren) storage::Btrfs::add_device(BlkDevice *blk_device);
%catches(storage::BtrfsSubvolumeNotFoundByPath) storage::Btrfs::find_btrfs_subvolume_by_path(const std::string &path);
%catches(storage::BtrfsSubvolumeNotFoundByPath) storage::Btrfs::find_btrfs_subvolume_by_path(const std::string &path) const;
%catches(storage::Exception) storage::Btrfs::remove_device(BlkDevice *blk_device);
%catches(storage::DeviceNotFound) storage::CompoundAction::find_by_target_device(Actiongraph *actiongraph, const Device *device);
%catches(storage::DeviceNotFound) storage::CompoundAction::find_by_target_device(const Actiongraph *actiongraph, const Device *device);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Dasd::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Dasd::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::Exception) storage::Device::compare_by_name(const Device *lhs, const Device *rhs);
%catches(storage::Exception) storage::Device::copy_to_devicegraph(Devicegraph *devicegraph) const;
%catches(storage::Exception) storage::Device::detect_resize_info() const;
%catches(storage::Exception) storage::Device::get_name_sort_key() const;
%catches(storage::Exception) storage::Devicegraph::check(const CheckCallbacks *check_callbacks=nullptr) const;
%catches(storage::DeviceNotFoundBySid) storage::Devicegraph::find_device(sid_t sid);
%catches(storage::DeviceNotFoundBySid) storage::Devicegraph::find_device(sid_t sid) const;
%catches(storage::HolderNotFoundBySids) storage::Devicegraph::find_holder(sid_t source_sid, sid_t target_sid);
%catches(storage::HolderNotFoundBySids) storage::Devicegraph::find_holder(sid_t source_sid, sid_t target_sid) const;
%catches(storage::Exception) storage::Devicegraph::load(const std::string &filename);
%catches(storage::DeviceNotFoundBySid) storage::Devicegraph::remove_device(sid_t sid);
%catches(storage::Exception) storage::Devicegraph::save(const std::string &filename) const;
%catches(storage::Exception) storage::Devicegraph::write_graphviz(const std::string &filename, DevicegraphStyleCallbacks *style_callbacks) const;
%catches(storage::Exception) storage::Devicegraph::write_graphviz(const std::string &filename, GraphvizFlags flags=GraphvizFlags::NAME, GraphvizFlags tooltip_flags=GraphvizFlags::NONE) const;
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Disk::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Disk::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::DmRaid::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::DmRaid::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::Exception) storage::Filesystem::detect_space_info() const;
%catches(storage::HolderAlreadyExists) storage::FilesystemUser::create(Devicegraph *devicegraph, const Device *source, const Device *target);
%catches(storage::Exception) storage::Holder::copy_to_devicegraph(Devicegraph *devicegraph) const;
%catches(storage::Exception) storage::ImplicitPt::create_implicit_partition();
%catches(storage::Exception) storage::LvmLv::create_lvm_lv(const std::string &lv_name, LvType lv_type, unsigned long long size);
%catches(storage::Exception) storage::LvmLv::get_lvm_lv(const std::string &lv_name);
%catches(storage::Exception) storage::LvmLv::get_lvm_vg() const;
%catches(storage::Exception) storage::LvmLv::get_origin();
%catches(storage::Exception) storage::LvmLv::get_origin() const;
%catches(storage::Exception) storage::LvmLv::get_thin_pool() const;
%catches(storage::Exception) storage::LvmLv::set_chunk_size(unsigned long long chunk_size);
%catches(storage::Exception) storage::LvmLv::set_stripe_size(unsigned long long stripe_size);
%catches(storage::Exception) storage::LvmLv::set_stripes(unsigned int stripes);
%catches(storage::Exception) storage::LvmPv::get_blk_device();
%catches(storage::Exception) storage::LvmPv::get_blk_device() const;
%catches(storage::Exception) storage::LvmPv::get_lvm_vg();
%catches(storage::Exception) storage::LvmPv::get_lvm_vg() const;
%catches(storage::Exception) storage::LvmPv::get_usable_size() const;
%catches(storage::LvmVgNotFoundByVgName) storage::LvmVg::find_by_vg_name(Devicegraph *devicegraph, const std::string &vg_name);
%catches(storage::LvmVgNotFoundByVgName) storage::LvmVg::find_by_vg_name(const Devicegraph *devicegraph, const std::string &vg_name);
%catches(storage::Exception) storage::LvmVg::get_lvm_lv(const std::string &lv_name);
%catches(storage::InvalidExtentSize, storage::Exception) storage::LvmVg::set_extent_size(unsigned long long extent_size);
%catches(storage::WrongNumberOfChildren) storage::Md::add_device(BlkDevice *blk_device);
%catches(storage::Exception) storage::Md::compare_by_number(const Md *lhs, const Md *rhs);
%catches(storage::Exception) storage::Md::create(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Md::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Md::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::Exception) storage::Md::get_allowed_md_parities() const;
%catches(storage::Exception) storage::Md::get_number() const;
%catches(storage::Exception) storage::Md::remove_device(BlkDevice *blk_device);
%catches(storage::Exception) storage::MdContainer::create(Devicegraph *devicegraph, const std::string &name);
%catches(storage::Exception) storage::MdMember::create(Devicegraph *devicegraph, const std::string &name);
%catches(storage::Exception) storage::MdMember::get_md_container();
%catches(storage::Exception) storage::MdMember::get_md_container() const;
%catches(storage::HolderAlreadyExists) storage::MdSubdevice::create(Devicegraph *devicegraph, const Device *source, const Device *target);
%catches(storage::HolderAlreadyExists) storage::MdUser::create(Devicegraph *devicegraph, const Device *source, const Device *target);
%catches(storage::InvalidMountPointPath) storage::MountPoint::create(Devicegraph *devicegraph, const std::string &path);
%catches(storage::Exception) storage::MountPoint::get_filesystem();
%catches(storage::Exception) storage::MountPoint::get_filesystem() const;
%catches(storage::Exception) storage::MountPoint::get_mountable();
%catches(storage::Exception) storage::MountPoint::get_mountable() const;
%catches(storage::Exception) storage::MountPoint::immediate_activate();
%catches(storage::Exception) storage::MountPoint::immediate_deactivate();
%catches(storage::Exception) storage::MountPoint::possible_mount_bys() const;
%catches(storage::Exception) storage::MountPoint::set_mount_type(FsType mount_type);
%catches(storage::InvalidMountPointPath) storage::MountPoint::set_path(const std::string &path);
%catches(storage::Exception) storage::Mountable::remove_mount_point();
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Multipath::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Multipath::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Nfs::find_by_server_and_path(Devicegraph *devicegraph, const std::string &server, const std::string &path);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Nfs::find_by_server_and_path(const Devicegraph *devicegraph, const std::string &server, const std::string &path);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Partition::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::Partition::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::Partition::get_partition_table() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::Partition::get_partitionable() const;
%catches(storage::Exception) storage::Partition::get_unused_surrounding_region() const;
%catches(storage::Exception) storage::Partition::set_boot(bool boot);
%catches(storage::Exception) storage::Partition::set_id(unsigned int id);
%catches(storage::Exception) storage::Partition::set_legacy_boot(bool legacy_boot);
%catches(storage::Exception) storage::Partition::set_type(PartitionType type);
%catches(storage::AlignError) storage::PartitionTable::align(const Region &region, AlignPolicy align_policy=AlignPolicy::ALIGN_START_AND_END, AlignType align_type=AlignType::OPTIMAL) const;
%catches(storage::DifferentBlockSizes) storage::PartitionTable::create_partition(const std::string &name, const Region &region, PartitionType type);
%catches(storage::Exception) storage::PartitionTable::get_extended() const;
%catches(storage::Exception) storage::PartitionTable::get_partition(const std::string &name);
%catches(storage::Exception) storage::PartitionTable::get_partitionable() const;
%catches(storage::Exception) storage::PartitionTable::get_unused_partition_slots(AlignPolicy align_policy=AlignPolicy::ALIGN_START_KEEP_END, AlignType align_type=AlignType::OPTIMAL) const;
%catches(storage::WrongNumberOfChildren, storage::UnsupportedException, storage::Exception) storage::Partitionable::create_partition_table(PtType pt_type);
%catches(storage::Exception) storage::Partitionable::get_default_partition_table_type() const;
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::Partitionable::get_partition_table();
%catches(storage::WrongNumberOfChildren, storage::DeviceHasWrongType) storage::Partitionable::get_partition_table() const;
%catches(storage::Exception) storage::Region::adjust_length(long long delta);
%catches(storage::Exception) storage::Region::adjust_start(long long delta);
%catches(storage::Exception) storage::Region::get_end() const;
%catches(storage::DifferentBlockSizes) storage::Region::inside(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::intersect(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::operator!=(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::operator<(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::operator<=(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::operator==(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::operator>(const Region &rhs) const;
%catches(storage::DifferentBlockSizes) storage::Region::operator>=(const Region &rhs) const;
%catches(storage::Exception) storage::Region::unused_regions(const std::vector< Region > &used_regions) const;
%catches(storage::LockException, storage::Exception) storage::Storage::Storage(const Environment &environment);
%catches(storage::Aborted, storage::Exception) storage::Storage::activate(const ActivateCallbacks *activate_callbacks) const;
%catches(storage::Exception) storage::Storage::calculate_actiongraph();
%catches(storage::Exception) storage::Storage::check(const CheckCallbacks *check_callbacks=nullptr) const;
%catches(storage::Aborted, storage::Exception) storage::Storage::commit(const CommitOptions &commit_options, const CommitCallbacks *commit_callbacks=nullptr);
%catches(storage::Aborted, storage::Exception) storage::Storage::commit(const CommitCallbacks *commit_callbacks=nullptr);
%catches(storage::Exception) storage::Storage::copy_devicegraph(const std::string &source_name, const std::string &dest_name);
%catches(storage::Exception) storage::Storage::create_devicegraph(const std::string &name);
%catches(storage::Exception) storage::Storage::deactivate() const;
%catches(storage::Exception) storage::Storage::get_devicegraph(const std::string &name);
%catches(storage::Exception) storage::Storage::get_devicegraph(const std::string &name) const;
%catches(storage::Exception) storage::Storage::get_probed() const;
%catches(storage::Exception) storage::Storage::get_staging();
%catches(storage::Exception) storage::Storage::get_staging() const;
%catches(storage::Exception) storage::Storage::get_system();
%catches(storage::Exception) storage::Storage::get_system() const;
%catches(storage::Aborted, storage::Exception) storage::Storage::probe(const ProbeCallbacks *probe_callbacks=nullptr);
%catches(storage::Exception) storage::Storage::remove_devicegraph(const std::string &name);
%catches(storage::Exception) storage::Storage::restore_devicegraph(const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::StrayBlkDevice::find_by_name(Devicegraph *devicegraph, const std::string &name);
%catches(storage::DeviceNotFound, storage::DeviceHasWrongType) storage::StrayBlkDevice::find_by_name(const Devicegraph *devicegraph, const std::string &name);
%catches(storage::HolderAlreadyExists) storage::Subdevice::create(Devicegraph *devicegraph, const Device *source, const Device *target);
%catches(storage::HolderAlreadyExists) storage::User::create(Devicegraph *devicegraph, const Device *source, const Device *target);


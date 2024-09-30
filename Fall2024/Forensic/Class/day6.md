# Forensic Imagining 

### Alternative names for Forensic Imaging

- Bitstream Image
- Forensic Archive
- "E01" file
- Mirror Image (Not technically correct)
- DD 
- Physical Image
- Binary Image

### Exact Copy

- A forensic image is a bit for bit duplicate of a hard drive (or other media)
- Can be verified
- Protected from change and manipulation

### Encapsulated Files

- The process creates encapsulates file(s) called Forensic image files
- All data is copied, encoded, and placed inside a file or group of file`

### Verified with Hash Values

- These image files are often verified using hash values such as MD5 or SHA hash values
- Like a digital fingerprint that uniquely identifies values

### Chunk Files

- The forensic image can be broken up into several smaller files for storage (long term archival on optical media) or transfer (email, cloud storage, etc)

### Not A Clone

- Cloned drive can be placed back into your computer and used to boot it up
- As far as the OS is concerned its the same as the original drive 
- **Not:** The unallocated areas of the drive, where previously deleted information may be found, may not be copied to the clone
- This is not the same as a clone: clone would be copying active files

### Resist

- File format should resist changes
- What good is a forensic image if the internal data can be changed?
- Often created with the read only attribute
- The internal error checking should detect any changes to the data

### How do we view these?

- Only accessible with specialized forensic software
- The whole idea of creating a forensic image is that it can later be analyzed using forensic software 
- Software like encase, FTK, Autopsy, X-ways, etc

### Working Copy

- Always work off the image and not the original hard drive 
- Maintains the integrity of the original evidence and ensures no changes are made to the evidence

### Why Create One? 

- Snapshot of the state of drive 
- You may create another one at a later date
- Preservation of data
- Court requirements
- Discovery

### Forensic Image Formats

- Raw: dd
	- not a forensic image unless hash values are calculated
- E01: most popular after raw format
	- Built into linux - used to make several bitstreams
	- The EnCase format (E01) utalizes both MD5 and / or SHA1 hashing of the entire device and CRC checks every 32kb
- SMART: little used format designed by the authors of the E01 format
- AFF: an open source format gained little traction

### Physical V Logical

- When a storage device is placed in a Windows computer that device is given a drive letter, this is a **logic drive**
	- A single device may have more than one logic drive
-  The **entire device** is the physical drive
	- includes the system area and all partitions (and un-partitioned space) on that drive

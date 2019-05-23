# PiDockMedia

# History

Bzz Bzz Bzzz....zowie! Is this thing on? Warning, this will be reorganized later but is currently a stream of robotic conscious. Check out the PLAN document you see in the list above for plan details, and the INSTALL document for install details, some of which might end up here eventually.

This project burst out of the need for a media serving solution that was flexible, easy to set up, easy to maintain, and easy to fix while remaining flexible and relatively highly available. Windows media server, iTunes, FreeNAS, OMV, Folders, XBMC, Linux, Plex, Emby, etc were all various usable solutions that never lasted more than 2 years. The last attempt was a monolithic Linux server with a bunch of NAS rated disks that served up everything through docker images. It was being asked to do a lot and when the motherboard bricked I needed to start from scratch. This Robot can do better!

# What is this thing?

On the surface this is a design concept. Try and decentralize the workers in your media collection to separate out all of the processing in to a collection of tiny servers that each do a few things well. And, once it is working well, be able to quickly react to issues and get things back on line without a lot of fuss.

This is ultimately one or more shared drive spaces and a small army of Raspberry Pis to read, write, organize, clean, backup, and serve the media.

# Storage Platforms

Some sort of SMB Share system. SMB is fairly fast on all platforms that access the data. For me this is a Drobo. The drobo is backed up to a bunch of cheap USB drives hooked to an old Mac mini that back up ultimately to the cloud.

# Client

Plex and Emby. These really make running (most) of the media you have on the platform you want fairly easy. They aren’t perfect. There are less proprietary solutions. This works for me and 80% of the time I just use Plex. The design ideas here should work for any solution you choose. I would likely try any solution, though, that understands the filing system I use and can simply organize, enhance, and present the media in a useful way.

# Media Serving

Movies/TV/Music/Pictures are served by Plex and Emby.


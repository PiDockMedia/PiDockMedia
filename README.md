# PiDockMedia

# History

Bzz Bzz Bzzz....zowie! Is this thing on? Warning, this will be reorganized later but is currently a stream of robotic conscious. Check out the PLAN document you see in the list above for plan details, and the INSTALL document for install details, some of which might end up here eventually.

This project burst out of the need for a media serving solution that was flexible, easy to set up, easy to maintain, and easy to fix while remaining flexible and relatively highly available. Windows media server, iTunes, FreeNAS, OMV, Folders, XBMC, Linux, Plex, Emby, etc were all various usable solutions that never lasted long. The last attempt was a monolithic Linux server with a bunch of NAS rated disks that served up everything through docker images. It was being asked to do a lot and when the motherboard bricked a new solution was needed. This Robot could do better!

# What is this thing?

On the surface this is a design concept. Try and decentralize the workers in your media collection to separate out all of the processing in to a collection of tiny servers that each do a few things well. And, once it is working well, be able to quickly react to issues and get things back on line without a lot of fuss.

This is will ultimately ease the building of one or more shares and a small army of Raspberry Pis to read, write, organize, clean, backup, and serve the media.

Most of the technologies are built by others. This will bring those technologies together with a plan. You can use this plan to as a framework to put your own plan together. There is an install document. How do you get this up and running? That is covered in the Install. There is a maintenance document. This describes the sorts of things you might need to do to keep things running smoothly. It also describes how to get a piece of the solution back online with minimal fuss.

# Technologies

This will be detailed mostly in the plan document however the general outline is:

1. All files sit on share(s) running smb.
2. All serving is done from Raspberry Pis.

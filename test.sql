-- select Playlist.Name as Title,
-- Track.Name as Track,
-- Album.Title as Album,
-- Artist.Name as Artist from PlaylistTrack
-- inner join Playlist on PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- inner join Track on PlaylistTrack.TrackId = Track.TrackId
-- inner join Album on Track.AlbumId = Album.AlbumId
-- inner join Artist on Album.ArtistId = Artist.ArtistId
-- where Playlist.Name = 'Grunge';

-- Me
select Playlist.Name as Playlist, count(*) from Playlist
group by Playlist.Name 
having count(*) = 1;
-- Solution
SELECT Playlist.Name as Playlist, COUNT(*) From Playlist
INNER JOIN PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist
HAVING count(*) = 1;
Album.where(artist_id: 51).order(:id)

Track.where(media_type_id: 3).count

Genre.where(name: 'Hip Hop/Rap')

Track.where(genre_id: 17).count

Track.sum(:milliseconds)

Track.where(media_type_id: 1).maximum(:unit_price)

Track.where(media_type_id: 1).order(:unit_price).last.name

Artist.order(:created_at).first(2)

Track.where(genre_id: 15).order(:unit_price).first

Track.where(genre_id: Genre.find_by(name: 'Electronica/Dance'), media_type_id: MediaType.where(name: 'MPEG audio file').first)

Album.where("title LIKE ?", 'B%' )

Artist.where("name LIKE ?", 'A%' )

extra:

select title from albums where artist_id = 51;

select count(*) from tracks where media_type_id = 3;

select name, unit_price from tracks where genre_id = 15 order by unit_price ASC LIMIT 1;

select name from artists where name LIKE 'A%';

select * from playlists_tracks where playlist_id = 1;

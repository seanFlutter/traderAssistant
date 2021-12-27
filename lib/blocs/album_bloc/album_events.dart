enum AlbumEvents{
  fetchAlbums
}

abstract class AlbumEvent {}

class AlbumInitialEvent extends AlbumEvent {}

class AlbumGetEvent extends AlbumEvent {

}
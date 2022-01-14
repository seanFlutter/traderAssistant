enum AlbumEvents{
  fetchAlbums
}

abstract class StockEvent {}

class AlbumInitialEvent extends StockEvent {}

class AlbumGetEvent extends StockEvent {

}
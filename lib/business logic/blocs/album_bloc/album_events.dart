enum AlbumEvents{
  fetchAlbums
}

abstract class StockEvent {}

class AlbumInitialEvent extends StockEvent {}

class StockGetEvent extends StockEvent {

}
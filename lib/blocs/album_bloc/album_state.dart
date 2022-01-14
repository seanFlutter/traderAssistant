// import 'package:equatable/equatable.dart';
// import 'package:traderassistant/models/album_model.dart';
import 'package:equatable/equatable.dart';
import 'package:traderassistant/models/album_model.dart';
import 'package:traderassistant/models/stocks_lists_response_model.dart';


abstract class AlbumsState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AlbumLoadingState extends AlbumsState{

}
class AlbumInitialState extends AlbumsState{ }

class AlbumGetState extends AlbumsState{

}

class AlbumLoadedState extends AlbumsState{
  final List<Stocks> stocks;
  AlbumLoadedState({required this.stocks});
}
class AlbumListErrorstate extends AlbumsState{

  final error;
  AlbumListErrorstate({this.error});
}
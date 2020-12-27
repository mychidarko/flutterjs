class Show {
  final int id;
  final String author;
  final String title;
  final List<String> genre;
  final String description;
  final String media;
  final String createdAt;

  Show({
    this.id,
    this.author,
    this.title,
    this.genre,
    this.description,
    this.media,
    this.createdAt,
  });

  static List<Show> all() {
    return [
      Show(
        id: 1,
        title: 'Ao no exorcist',
        author: 'That Guy',
        description: 'This is a description',
        media: '8.jpg',
        genre: ['Supernatural'],
        createdAt: '22nd March, 2020',
      ),
      Show(
        id: 2,
        title: 'Toma san',
        author: 'That Guy',
        description: 'This is a description',
        media: '11.jpg',
        genre: ['Romance', 'Adventure'],
        createdAt: '22nd March, 2020',
      ),
      Show(
        id: 3,
        title: 'Kil',
        author: 'That Guy',
        description: 'This is a description',
        media: '10.jpg',
        genre: ['Fantasy', 'War'],
        createdAt: '22nd March, 2020',
      ),
      Show(
        id: 4,
        title: 'Attack on titan',
        author: 'That Guy',
        description: 'This is a description',
        media: '7.jpg',
        genre: ['Fantasy', 'Adventure'],
        createdAt: '22nd March, 2020',
      ),
    ];
  }

  static find(int showID) {
    List<Show> shows = Show.all();
    for (var i = 0; i < shows.length; i++) {
      if (shows[i].id == showID) {
        return shows[i];
      }
    }
    return null;
  }
}

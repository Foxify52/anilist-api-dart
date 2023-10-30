import 'package:anilist_api/anilist_character_request.dart';
import 'package:anilist_api/anilist_media_request.dart';
import 'package:anilist_api/anilist_staff_request.dart';
import 'package:anilist_api/models/models.dart';
import 'package:test/test.dart';

void main() {
  test('request string', () async {
    final AnilistCharacterSelect charSelect = AnilistCharacterSelect();
    charSelect.withNameFull();
    final AnilistStaffSelect staffSelect = AnilistStaffSelect();
    staffSelect.withNameFull();
    final AnilistMediaRequest request = AnilistMediaRequest();
    request
      ..withIdMal()
      ..withTitle()
      ..withType()
      ..withFormat()
      ..withIdMal()
      ..withStatus()
      ..withDescription()
      ..withStartDate()
      ..withEndDate()
      ..withSeason()
      ..withCountryOfOrigin()
      ..withIsLicensed()
      ..withSource()
      ..withHashtag()
      ..withTrailer()
      ..withUpdatedAt()
      ..withCoverImage()
      ..withBannerImage()
      ..withGenres()
      ..withSynonyms()
      ..withMeanScore()
      ..withAverageScore()
      ..withPopularity()
      ..withIsLocked()
      ..withFavourites()
      ..withTrending()
      ..withTagsId()
      ..withTagsName()
      ..withCharacters(
        AnilistSubquery<AnilistCharacterSelect>(charSelect, perPage: 5),
      )
      ..withStaff(AnilistSubquery<AnilistStaffSelect>(staffSelect, perPage: 5));
    AnilistMedia media = await request.byId(53390);

    expect(media.id, equals(53390));
    expect(media.idMal, equals(23390));
    expect(media.title?.english, equals('Attack on Titan'));
    expect(media.title?.romaji, equals('Shingeki no Kyojin'));
    expect(media.type, equals(AnilistMediaType.MANGA));
    expect(media.format, equals(AnilistMediaFormat.MANGA));
    expect(media.status, equals(AnilistMediaStatus.FINISHED));
    expect(media.description, isA<String>());
    expect(media.startDate?.fuzzyDate, equals(DateTime(2009, 9, 9)));
    expect(media.endDate?.fuzzyDate, equals(DateTime(2021, 4, 9)));
    expect(media.season, isNull);
    expect(media.countryOfOrigin, equals('JP'));
    expect(media.isLicensed, isTrue);
    expect(media.source, equals(AnilistMediaSource.ORIGINAL));
    expect(media.updatedAt, greaterThanOrEqualTo(1589547714));
    expect(media.coverImage?.extraLarge, isNotNull);
    expect(media.bannerImage, isNotNull);
    expect(media.genres, hasLength(greaterThan(2)));
    expect(media.synonyms, hasLength(greaterThan(2)));
    expect(media.tags, hasLength(greaterThan(1)));
    expect(media.tags?.first.name, isNotNull);
    expect(media.tags?.first.description, isNull);
    expect(media.characters?.nodes, hasLength(5));
    expect(media.characters?.nodes?.first.name?.full, isA<String>());
    expect(media.staff?.nodes, hasLength(greaterThan(2)));
    expect(media.staff?.nodes?.first.name?.full, isA<String>());
  });
  test('request media query', () async {
    final AnilistMediaRequest request = AnilistMediaRequest();
    request
      ..withIdMal()
      ..withTitle();
    request.querySearch('attack on titan');
    AnilistQueryResult<AnilistMedia> result = await request.list(10, 1);
    expect(result.results, hasLength(10));
    expect(
      result.results?.first.title?.english?.toLowerCase(),
      contains('attack'),
    );
  });

  test('request media query list', () async {
    final AnilistMediaRequest request = AnilistMediaRequest();
    request.withGenres();
    request
      ..querySearch('attack')
      ..queryGenres(<String>['comedy', 'action']);

    AnilistQueryResult<AnilistMedia> result = await request.list(1, 1);

    expect(result.results, hasLength(1));
    expect(result.results?.first.genres, contains('Comedy'));
    expect(result.results?.first.genres, contains('Action'));
  });

  test('request media query list type', () async {
    final AnilistMediaRequest request = AnilistMediaRequest();
    request
      ..withType()
      ..queryType(AnilistMediaType.MANGA)
      ..querySearch('attack');

    AnilistQueryResult<AnilistMedia> result = await request.list(10, 1);
    expect(result.results, hasLength(10));
    expect(
      result.results!
          .every((AnilistMedia m) => m.type == AnilistMediaType.MANGA),
      isTrue,
    );
  });

  test('request media query sort', () async {
    final AnilistMediaRequest request = AnilistMediaRequest();
    request.withTitle();
    request
      ..querySearch('attack')
      ..queryGenres(<String>['comedy', 'action'])
      ..sort(<AnilistMediaSort>[AnilistMediaSort.TITLE_ENGLISH]);

    AnilistQueryResult<AnilistMedia> result = await request.list(10, 1);
    expect(result.results, hasLength(greaterThan(1)));
    AnilistMedia? first = result.results?.first;

    request.sort(<AnilistMediaSort>[AnilistMediaSort.SEARCH_MATCH]);

    result = await request.list(10, 1);
    expect(result.results, hasLength(greaterThan(1)));

    AnilistMedia? second = result.results?.first;

    expect(first, isNot(equals(second)));
  });

  test('request character', () async {
    final AnilistCharacterRequest request = AnilistCharacterRequest();
    request.withName();
    AnilistCharacter char = await request.byId(40881);
    expect(char.name?.full, equals('Mikasa Ackerman'));
  });
  test('search character', () async {
    final AnilistCharacterRequest request = AnilistCharacterRequest();
    request
      ..withName()
      ..querySearch('Mikasa Ackerman');
    AnilistQueryResult<AnilistCharacter> char = await request.list(1, 1);
    expect(char.results?.first.name?.full, equals('Mikasa Ackerman'));
  });
  test('request staff', () async {
    final AnilistStaffRequest request = AnilistStaffRequest();
    request.withName();
    AnilistStaff staff = await request.byId(106705);
    expect(staff.name?.first, equals('Hajime'));
  });
  test('request staff search', () async {
    final AnilistStaffRequest request = AnilistStaffRequest();
    request
      ..withName()
      ..withImage()
      ..querySearch('akira');

    AnilistQueryResult<AnilistStaff> staffs = await request.list(100, 1);
    expect(staffs.results?.first.name?.first, equals('Akira'));
  });
}

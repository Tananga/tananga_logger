import 'package:tananga_logger/tananga_logger.dart';

void main() {
  TanangaLogger.error(text: "simple error", uuidV4: "e76b5e12-5ef2-404f-aea6-52ab658b7322");
  TanangaLogger.warning(text: "simple warning", uuidV4: "54844842-dcaf-424b-a01a-eab189cb047f");
  TanangaLogger.info(text: "simple info", uuidV4: "5abdefa6-84cf-4fb5-9eb6-ab2c3e2c0871");
}

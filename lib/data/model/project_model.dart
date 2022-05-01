class PorjectModel {
  final String title, imageUrl, des;
  final ProjectType projectType;
  const PorjectModel(
      {required this.des,
      required this.imageUrl,
      required this.title,
      required this.projectType});
  static List<PorjectModel> projects = [
    PorjectModel(
        title: 'HFDM',
        imageUrl:
            'https://user-images.githubusercontent.com/68919043/166116348-3cf64a92-de22-4c98-8b72-7bc9b82c30cd.jpg',
        des:
            'A flutter built app. This apps is built basically to maintian institutional daily jobs easy.',
        projectType:
            PublicRepo('https://github.com/Istiak-Ahmed78/madrasah_t')),
  ];
}

abstract class ProjectType {
  final String? proejctUrl;
  const ProjectType({this.proejctUrl});
}

class PrivateRepo extends ProjectType {
  const PrivateRepo() : super();
}

class PublicRepo extends ProjectType {
  final String projectLink;
  PublicRepo(this.projectLink) : super(proejctUrl: projectLink);
}

class ProjectModel {
  final String title, imageUrl, des;
  final ProjectType projectType;
  const ProjectModel(
      {required this.des,
      required this.imageUrl,
      required this.title,
      required this.projectType});
  static List<ProjectModel> projects = [
    ProjectModel(
        title: 'HFDM',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1sj5w3cdZC-tB-uDjWjpLAu2nxz4HTn5E',
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

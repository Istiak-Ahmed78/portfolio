import 'package:flutter/material.dart';
import 'package:portfolio/configs/fonts.dart';
import 'package:portfolio/coomon_widgets/common_gap.dart';
import 'package:portfolio/data/model/project_model.dart';
import 'package:portfolio/utils/url_launch.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Projects',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontFamily: Fonts.exoItalic,
              ),
        ),
        const Gap(),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>
              _ProjectTile(porjectModel: PorjectModel.projects[index]),
          itemCount: PorjectModel.projects.length,
          shrinkWrap: true,
        ),
      ],
    );
  }
}

class _ProjectTile extends StatelessWidget {
  final PorjectModel porjectModel;
  const _ProjectTile({Key? key, required this.porjectModel}) : super(key: key);

  final double _height = 300;
  final double _weight = 150;

  Widget _buildScreenshot(String imageUrl) {
    return Container(
      height: _height,
      width: _weight,
      decoration:
          BoxDecoration(image: DecorationImage(image: NetworkImage(imageUrl))),
    );
  }

  Widget _projectTtrigerButton(ProjectType projectType) {
    return projectType is PrivateRepo
        ? Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: Colors.indigo),
            child: const Text(
              'Private respository',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : GestureDetector(
            onTap: () => launchUrl(projectType.proejctUrl),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(color: Colors.indigo),
              child: const Text(
                'See on GitHub',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
  }

  Widget _buildBody(String title, String des, ProjectType projectType) {
    return Column(
      children: [
        Container(
          width: _weight,
          decoration:
              BoxDecoration(border: Border.all(width: 2, color: Colors.grey)),
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(title)),
              const Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  des,
                ),
              )
            ],
          ),
        ),
        const Gap(),
        _projectTtrigerButton(projectType)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildScreenshot(porjectModel.imageUrl),
        _buildBody(
            porjectModel.title, porjectModel.des, porjectModel.projectType)
      ],
    );
  }
}

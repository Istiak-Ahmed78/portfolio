class EducationQMOdel {
  final String startTime, endTime, instituteName, degree;
  EducationQMOdel(
      {required this.degree,
      required this.endTime,
      required this.instituteName,
      required this.startTime});
  static List<EducationQMOdel> myEducationWFicList = [
    EducationQMOdel(
        degree: 'BSC in Electrical and Electronice Engineering',
        endTime: 'Present',
        instituteName: 'University of chittagong, Chittagong, Bangladesh',
        startTime: '2020'),
    EducationQMOdel(
        degree: 'HSC',
        endTime: '2019',
        instituteName: 'Police lines school and college, bogra',
        startTime: '2017'),
    EducationQMOdel(
        degree: 'SSC',
        endTime: '2017',
        instituteName: 'Habibpur Fazil Madrasah',
        startTime: '2014')
  ];
}

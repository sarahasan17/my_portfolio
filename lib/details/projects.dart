class Project {
String image, category, title;
int id;
Project({required this.id,required this.image,required this.category,required this.title});
}


List<Project> recentWorks = [
  Project(
    id: 1,
    title: "Jaunnt App",
    category: "App Developer",
    image: "assets/images/img.png",
  ),
];

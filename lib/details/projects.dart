class Project {
String image, category, title;
int id;

Project({required this.id,required this.image,required this.category,required this.title});
}

// Demo List of my works
List<Project> recentWorks = [
  Project(
    id: 1,
    title: "Jaunnt App",
    category: "App Dev",
    image: "assets/images/work_1.png",
  ),
];

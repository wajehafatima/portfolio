class projectutils{
  final String image;
  final String title;
  final String subtitle;
  projectutils({
    required this.image,
    required this.title,
    required this.subtitle
});
  
  
}
List<projectutils> projectsUtils=[
  projectutils(image: 'lib/assets/fb22.jpeg', title:'FaceBook Clone', subtitle:'Facebook Clone made with Flutter for mobile App development Skills.\nexploring features and functionality.'),
  projectutils(image: 'lib/assets/calcu.jpeg', title: 'Calculator', subtitle:'A simple Calculator App built with flutter\n perfotms basic arithmetic operations with ease.'),
  projectutils(image: 'lib/assets/counte12.jpeg', title: 'Counter App', subtitle: 'A project for learning\nIncrement, decrement and reset with ease function.'),
  projectutils(image: 'lib/assets/gold.jpeg', title: 'Gold App', subtitle:'An app which calculate gold price with different units accurately'),
  projectutils(image: 'lib/assets/pr.jpeg', title: 'Project Report', subtitle: 'A detailed report of development process submitted to our organization'),
  projectutils(image: 'lib/assets/todo12.jpeg', title: 'ToDo App', subtitle:'A simple but efficient Project to create, manage, and conquer your to-do list'),
  projectutils(image: 'lib/assets/cdt.jpeg', title: 'CountDown Timer', subtitle: 'Customized countdown timer built to display real-time remaining time '),

];
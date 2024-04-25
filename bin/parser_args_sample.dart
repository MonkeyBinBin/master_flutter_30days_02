import 'package:args/args.dart';

void main(List<String> arguments) {
  // Parse command line arguments
  final parser = ArgParser();
  parser.addOption('name', abbr: 'n', help: 'Your name');
  parser.addOption('age', abbr: 'a', help: 'Your age');
  parser.addFlag('help', abbr: 'h', help: 'Show help', negatable: false);

  final results = parser.parse(arguments);

  // Print help if --help is provided
  if (results['help']) {
    print(parser.usage);
    return;
  }

  // Access parsed arguments
  final name = results['name'];
  final age = results['age'];

  print('Hello, $name! You are $age years old.');
}

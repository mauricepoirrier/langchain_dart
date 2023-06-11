import '../../language_models/models/models.dart';

/// Class that contains all relevant information for an LLM Result.
class LLMResult extends LanguageModelResult<List<LLMGeneration>> {
  const LLMResult({
    required super.generations,
    super.tokensUsage,
    super.modelOutput,
  });

  @override
  String toString() {
    return '''
LLMResult{
  generations: $generations, 
  tokensUsage: $tokensUsage, 
  modelOutput: $modelOutput},
''';
  }
}

/// Output of a single generation.
class LLMGeneration extends LanguageModelGeneration<String> {
  const LLMGeneration(
    super.output, {
    super.generationInfo,
  });

  @override
  String toString() {
    return '''
LLMGeneration{
  output: $output, 
  generationInfo: $generationInfo, 
''';
  }
}
import java.util.List;
import java.util.regex.Pattern;

class Scrabble {

    private static class Score {
        final int points;
        final Pattern pattern;

        Score(int points, String letters) {
            this.points = points;
            this.pattern = Pattern.compile("([" + letters + "])");
        }
    }

    private static final List<Score> letterScores =
        List.of(
            new Score(1, "aeioulnrst"),
            new Score(2, "dg"),
            new Score(3, "bcmp"),
            new Score(4, "fhvwy"),
            new Score(5, "k"),
            new Score(8, "jx"),
            new Score(10, "qz")
        );


    private final int score;

    Scrabble(String word) {
        final String target = word.toLowerCase();
        this.score = letterScores.stream()
            .mapToInt(s -> s.points * (int) s.pattern.matcher(target).results().count())
            .sum();
    }

    int getScore() {
        return this.score;
    }

}

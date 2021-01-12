import java.lang.IllegalArgumentException;
import java.util.stream.IntStream;

public class Hamming {
    private long distance;

    public Hamming(String left, String right) {
        final int length = requireEqualLength(left, right);

        this.distance = IntStream.range(0, length)
            .filter(i -> left.codePointAt(i) != right.codePointAt(i))
            .count();
    }

    public long getHammingDistance() {
        return distance;
    }

    private int requireEqualLength(String left, String right) {
        if (left.length() != right.length()) {
            String message = left.isEmpty() ? "left strand must not be empty."
                : right.isEmpty() ? "right strand must not be empty."
                : "leftStrand and rightStrand must be of equal length.";
            throw new IllegalArgumentException(message);
        }
        return left.length();
    }
}

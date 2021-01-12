import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Gigasecond {
    private static final Duration GIGASECOND = Duration.ofSeconds(1_000_000_000L);
    
    private final LocalDateTime moment;

    public Gigasecond(LocalDate moment) {
        this(moment.atStartOfDay());   
    }

    public Gigasecond(LocalDateTime moment) {
        this.moment = moment.plus(GIGASECOND);
    }

    public LocalDateTime getDateTime() {
        return this.moment;
    }
}

import org.gradle.api.tasks.testing.logging.TestExceptionFormat

buildscript {
    repositories {
        maven("https://plugins.gradle.org/m2/")
    }
    dependencies {
        classpath("org.jlleitschuh.gradle:ktlint-gradle:9.4.1")
    }
}

apply(plugin = "org.jlleitschuh.gradle.ktlint")

plugins {
    kotlin("jvm") version "1.3.60"
}

repositories {
    jcenter()
}

dependencies {

    implementation(kotlin("stdlib"))
    
    testImplementation("junit:junit:4.12")
    testImplementation(kotlin("test-junit"))
}

tasks.withType<Test> {
    testLogging {
        exceptionFormat = TestExceptionFormat.FULL
        events("passed", "failed", "skipped")
    }
}

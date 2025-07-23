package com.vijaynarayanan.expensetracker;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.ApplicationListener;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.scheduling.annotation.Async;

@Configuration
@ConditionalOnProperty(name = "spring.flyway.standalone", havingValue = "true")
public class ShutdownAfterFlywayMigration implements ApplicationListener<ContextRefreshedEvent> {
    @Override
    @Async
    public void onApplicationEvent(ContextRefreshedEvent event) {
        ((ConfigurableApplicationContext)event.getApplicationContext()).close();
    }
}

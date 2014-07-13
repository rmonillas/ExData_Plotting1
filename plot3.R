setwd(file.path("C:","Users","Monillas","Desktop","Coursera",
                "Exploratory Data Analysis"))

data <- read.table("household_power_consumption.txt",
                   header=TRUE,sep=";", stringsAsFactors=FALSE)

data2 <- subset(data, Date=="1/2/2007" | Date=="2/2/2007",
                select = Date:Sub_metering_3)

png("plot3.png", width=480, height=480, units="px")

plot(1:2880, as.numeric(data2$Sub_metering_1), type="l",
     xlab="", ylab="Energy sub metering",xaxt="n")
lines(1:2880, as.numeric(data2$Sub_metering_2), col="red")
lines(1:2880, as.numeric(data2$Sub_metering_3), col="blue")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c(1,2,4),lty=c(1,1,1))

dev.off()

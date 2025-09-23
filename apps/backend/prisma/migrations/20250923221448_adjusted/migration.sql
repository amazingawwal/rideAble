/*
  Warnings:

  - A unique constraint covering the columns `[passengerId]` on the table `Password` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "public"."Password" DROP CONSTRAINT "Password_passengerId_fkey";

-- CreateIndex
CREATE UNIQUE INDEX "Password_passengerId_key" ON "public"."Password"("passengerId");

-- AddForeignKey
ALTER TABLE "public"."Password" ADD CONSTRAINT "Password_passengerId_fkey" FOREIGN KEY ("passengerId") REFERENCES "public"."Passenger"("id") ON DELETE CASCADE ON UPDATE CASCADE;
